#0. 실행 정책 변경
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned

#1. WEB1 서버에 파일서버 리소스 관리자 역할 서비스 설치
Install-WindowsFeature -Name FS-Resource-Manager -IncludeAllSubFeature 
-includeManagementTools

#2. CL1에서 WEB1 서버와 원격 세션 수립
$file = New-PSSession -ComputerName WEB1

#3. 원격 컴퓨터에서 사용 가능한 모듈 확인
Get-Module -PSSession $file -ListAvailable

#4. 파일 서버 리소스 관리자 모듈을 로드하고 명령에 접두어 표시
Import-Module -PSSession $file -Name FileServerResourceManager -Prefix Rem

#5. 도움말 확인
Get-Help Set-RemFSrmQuota -Full

#6. 클라이언트에서 할당량 템플릿을 조회하는 명령 실행
Get-RmsFSrmQuotaTemplate | Format-Wide

#7. 암시적 원격 작업 세션 제거와 세션 자동 다시 연결
Get-PSSession | Remove-PSSession
Get-RmsFSrmQuotaTemplate | Format-Wide