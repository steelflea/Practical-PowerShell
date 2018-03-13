[CmdletBinding()]
Param(
	[Parameter(Position=0,Mandatory=$True)]
	[string]$ComputerName,
	[int]$EventID = 4634
)   

#디버깅 메시지 출력
Write-Debug -Message "`$ComputerName: $ComputerName"
Write-Verbose -Message "로그 이름을 입력 받는다."
$LogName = Read-Host "로그 이름을 입력하세요."        

#디버깅 메시지 출력
Write-Debug -Message "`$LogName: $LogName"
Write-Verbose -Message "'$ComputerName'에서 '$LogName'로그 추출 시작."
             
Get-EventLog -ComputerName $ComputerName -LogName $LogName |
Where-Object -Property EventID -eq $EventID |
Select-Object -First 7
 