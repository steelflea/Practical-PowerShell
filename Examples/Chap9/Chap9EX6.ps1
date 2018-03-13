function Get-SecurityEvents {
    <#
    .SYNOPSIS
    컴퓨터의 보안에 로그 대한 감사 정보를 가져온다.
    .DESCRIPTION
    이벤트 뷰어의 Windows 로그아래에서 보안 감사 로그를 대상으로 한다. 
    계정 로그인/로그오프 등의 감사 로그 내용을 가져온다.
    .PARAMETER ComputerName
    로그를 가져올 컴퓨터의 이름.
    .PARAMETER EventID
    보안 로그에서 원하는 이벤트의 ID.
    .EXAMPLE
    Get-SecurityEvents -ComputerName MyComputer
    .EXAMPLE
    Get-SecurityEvents -ComputerName MyComputer -EventID 4634
    .EXAMPLE
    Get-SecurityEvents -ComputerName MyComputer -EventID 4634 -Verbose
    #>

	[CmdletBinding()]
	Param(
		[Parameter(Position=0,Mandatory=$True)]
		[string]$ComputerName,

		[int]$EventID = 4634
	)   
    BEGIN 
    {
        Write-Verbose -Message "로그 이름을 입력 받는다."
        $LogName = Read-Host "로그 이름을 입력하세요."        
    }
    PROCESS
    {
        Write-Verbose -Message "'$ComputerName'에서 '$LogName'로그를 가져온다."
        Get-EventLog -ComputerName $ComputerName `
        -LogName $LogName |
	    Where-Object -Property EventID -eq $EventID |
	    Select-Object -First 7
    }
	END {}
}