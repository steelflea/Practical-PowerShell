#1. PowerShell 웹 액세스 설치 
Install-WindowsFeature -Name WindowsPowerShellWebAccess -IncludeManagementTools
#2. 웹 애플리케이션과 인증서 설치 
Install-PswaWebApplication -UseTestCertificate
#3. 웹 액세스 접근 규칙 확인
Get-PswaAuthorizationRule
#4. 웹 액세스 접권 규칙 추가.
Add-PswaAuthorizationRule -ComputerName * -UserName * -ConfigurationName *
