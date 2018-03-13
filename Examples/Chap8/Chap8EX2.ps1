#[예제 8.2] 이벤트 뷰어의 보안 로그 조회 스크립트
[CmdletBinding()]
Param(
	[Parameter(Mandatory=$True)]
	[string]$ComputerName,
	[int]$EventID = 4634
)
Get-EventLog -LogName Security -ComputerName $ComputerName |
Where EventID -eq $EventID |
Select -First 10
