function Send-OutlookMail{
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
        $Cred = (Get-Credential)
        $SmtpSvr=“smtp.live.com”
        $SmtpPort="587"     
    }
    PROCESS
    {
        Send-MailMessage -From $From -To $To -Cc $Cc -Subject $Subject `
        -Body $Body -SmtpServer $SmtpSvr  -Port $SmtpPort -UseSsl `
        -Credential $Cred -Encoding UTF8
    }
    END
    {
        Clear-Variable -Name Cred
    }
}

