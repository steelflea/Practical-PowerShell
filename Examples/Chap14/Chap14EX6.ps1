#구성 ID에 사용할 GUID 생성
$Web1Guid = New-Guid
$Web2Guid = New-Guid

#원본 MOF 파일 위치
$Web1Src = ".\MyDomainWebSite\web1.mydomain.local.mof"
$Web2Src = ".\MyDomainWebSite\web2.mydomain.local.mof"

#원본 MOF 이름을 GUID로 변경 후 복사할 위치 끌어 오기 서버에 복사
$Dest = "\\pull\c$\Program Files\WindowsPowershell\DscService\Configuration\"
$Web1Dest = $Dest + "$Web1Guid.mof"
$Web2Dest = $Dest + "$Web2Guid.mof"

#끌어 오기 서버로 MOF 파일 복사
Copy-Item -Path $Web1Src -Destination $Web1Dest
Copy-Item -Path $Web2Src -Destination $Web2Dest

#무결성 확인을 위한 체크썸 파일 생성
New-DSCChecksum $Web1Dest
New-DSCChecksum $Web2Dest

#대상 노드의 웹 서버 역할 설치 여부 확인
Invoke-Command -ComputerName Web1,Web2 `
-ScriptBlock {Get-WindowsFeature -Name Web-Server | ft -AutoSize}

#끌어 오기 클라이언트 구성 스크립트 실행
. .\Chap14EX7.ps1
PullClient -TargetNode web1.mydomain.local -GUID $Web1Guid
PullClient -TargetNode web2.mydomain.local -GUID $Web2Guid

#끌어 오기 클라이언트에 메타 MOF 적용하기 
Set-DSCLocalConfigurationManager -ComputerName web1.mydomain.local -Path .\PullClient -Verbose
Set-DSCLocalConfigurationManager -ComputerName web2.mydomain.local -Path .\PullClient -Verbose

#끌어 오기 클라이언트 구성 상태 확인
Invoke-Command -ComputerName web1,web2 -ScriptBlock {Get-DscConfigurationStatus}