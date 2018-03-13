function Get-SecurityEvents {
	[CmdletBinding()]
	Param(
		[Parameter(Position=0,Mandatory=$True)]
		[string]$ComputerName,

		[int]$EventID = 4634
	)   
    BEGIN 
    {
        $LogName = Read-Host "로그 이름을 입력하세요."        
    }
    PROCESS
    {
        Get-EventLog -ComputerName $ComputerName `
        -LogName $LogName |
	    Where-Object -Property EventID -eq $EventID |
	    Select-Object -First 7
    }
	END {}
}