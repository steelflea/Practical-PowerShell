#1. 영구 연결 세션 만들기
$RemoteSS = New-PSSession -Name WEB1Session -ComputerName WEB1
#2. 만든 세션을 사용해 작업 실행하기 
Invoke-Command -Session $RemoteSS -ScriptBlock{
    $dll=Get-ChildItem -Path C:\Windows\System32 -Recurse |
    Where-Object {$_.Extension -eq ".dll"}
}
#3. 세션 끊기
Disconnect-PSSession -Session $RemoteSS
#4. 원격 컴퓨터의 끊어진 세션 확인하기
Get-PSSession -ComputerName WEB1
#5. 끊어진 세션 연결하기
$LocalSS = Connect-PSSession -ComputerName WEB1 -Name WEB1Session
#6. 연결된 세션의 작업 결과 확인
Invoke-Command -Session $LocalSS -ScriptBlock {$dll}
#7. 세션 제거 (재사용 못함)
Remove-PSSession -Name WEB1Session
 