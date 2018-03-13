function Send-OutlookMail{
    <#
    .SYNOPSIS
    Outlook.com의 SMTP를 이용해 메일을 발송한다.
    .DESCRIPTION
    Outlook.com 서비스에서 제공하는 SMTP를 이용해 PowerShell에서 메일을 보낼 수 있다.
    SMTP 서버는 ‘smtp.live.com’이며 포트는 587이다.
    이 기능은 Microsoft의 계정이 필요하다.
    .PARAMETER From
    보내는 사람
    .PARAMETER To
    받는 사람
    .PARAMETER Cc
    참조 수신자
    .PARAMETER Subject
    메일 제목
    .PARAMETER Body
    메일 본문 내용
    .EXAMPLE
    Send-OutlookMail -To recipient@anymail.com  -Subject “메일 제목” -Body “메일 본문”
    .EXAMPLE
    Send-OutlookMail -From sender@outlook.com -To recipient@anymail.com  
                     -Subject “메일 제목” -Body “메일 본문”
    .EXAMPLE
    Send-OutlookMail -From sender@outlook.com -To recipient@anymail.com  
                     -Subject “메일 제목” -Body “메일 본문” -Verbose
    #>

    [CmdletBinding()]
    Param(
	    [Parameter(Mandatory=$False)]
        [string] $From = "김도균 <kimdokyun@outlook.com>",
	    [Parameter(Mandatory=$True)]
        [string] $To,
        [Parameter(Mandatory=$False)]
        [string] $Cc = "steelflea@outlook.com",
        [Parameter(Mandatory=$True)]
        [string] $Subject,
        [Parameter(Mandatory=$False)]
        [string] $Body = "PowerShell에서 보낸 메일"
    )
    BEGIN 
    {
        Write-Verbose "Outlook.com의 자격증명을 입력 받는다."
        $Cred = (Get-Credential)
        $SmtpSvr=“smtp.live.com”
        $SmtpPort="587"     
    }
    PROCESS
    {
        Write-Verbose "'$To'에게 '$Subject'제목의 메일을 발송한다."
        Send-MailMessage -From $From -To $To -Cc $Cc -Subject $Subject `
        -Body $Body -SmtpServer $SmtpSvr  -Port $SmtpPort -UseSsl `
        -Credential $Cred -Encoding UTF8
    }
    END
    {
        Write-Verbose "저장된 자격증명을 지운다."
        Clear-Variable -Name Cred
    }
}
