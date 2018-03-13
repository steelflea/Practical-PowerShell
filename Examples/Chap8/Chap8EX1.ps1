#[예제 8.1] 이벤트 뷰어의 보안 로그 조회 구문 
Get-EventLog -LogName Security -ComputerName <컴퓨터이름> | `
Where-Object EventID -eq 4634 | `
Select-Object -First 10