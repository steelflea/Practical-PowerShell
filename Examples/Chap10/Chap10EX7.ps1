function Get-SecurityEvents {
	[CmdletBinding()]
	Param(
		[Parameter(Position=0,Mandatory=$True)]
		[string]$ComputerName,
		[int]$EventID = 4634
	)
	BEGIN 
	{
		$LogName = "Security"        
	}
	PROCESS
	{
        try
        {
            #에러 발생시 에러 내용을 $Err 변수에 저장.
            Get-EventLog -CN $ComputerName $LogName -EA Stop -ErrorVariable Err |
		    Where-Object -Property EventID -eq $EventID |
		    Select-Object -First 7
        }
        catch
        {
            Write-Verbose "$ComputerName 연결 에러"
            #$Err 변수에 저장된 내용을 MyErrors.txt 파일에 저장.
            $Err | Out-File C:\temp\MyErrors.txt -Append
        }    
		
	}
	END {}
}
