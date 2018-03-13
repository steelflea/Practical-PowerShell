<#
Send-MailMessage -From “kimdokyun <kimdokyun@outlook.com>” -To “dokyun@dokyun.pe.kr” `
-Subject "Test Mail" -Body "이 메일은 PowerShell에서 보냈습니다." `
-SmtpServer “smtp.live.com” -Port 587 -UseSsl -Credential (Get-Credential) -Encoding UTF8
#>

[CmdletBinding()]
Param(
	[Parameter(Mandatory=$False)][string] $From = "김도균 <kimdokyun@outlook.com>",
	[Parameter(Mandatory=$True)][string] $To,
    [Parameter(Mandatory=$False)][string] $Cc = "steelflea@outlook.com",
    [Parameter(Mandatory=$True)][string] $Subject,
    [Parameter(Mandatory=$False)][string] $Body = "PowerShell에서 보낸 메일",
    [Parameter(Mandatory=$True)][PSCredential] $Cred = (Get-Credential)
)

$SmtpSvr=“smtp.live.com”
$SmtpPort="587"

Send-MailMessage -From $From -To $To -Cc $Cc -Subject $Subject -Body $Body `
-SmtpServer $SmtpSvr  -Port $SmtpPort -UseSsl -Credential $Cred -Encoding UTF8