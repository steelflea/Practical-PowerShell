#세션 개체 생성
$ss = New-PSSession -ComputerName WEB1,CA1

#백그라운드로 실행하는 원격 작업 생성
Invoke-Command -Session $ss -FilePath C:\Temp\Chap13EX3.ps1 -AsJob
#원격 작업이 끝마칠 때까지 대기한다.
Get-Job | Wait-Job -Any

#작업 결과를 저장하고 결과를 필터링한다.
$Rules = Get-Job | Receive-Job
$NofIB=$Rules | Where {$_.Direction.value -eq 'Inbound'}
$NofOB=$Rules | Where {$_.Direction.value -eq 'Outbound'}

Write-Output ""
Write-Output "활성 인바운드 규칙은 $($NofIB.Count)개 입니다."
Write-Output "활성 아웃바운드 규칙은 $($NofOB.Count)개 입니다."