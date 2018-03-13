
#[따라 해보기]


##p119 [따라 해보기]
#1. 별칭 만들기 
New-Alias -Name npd -Value New-PSDrive
#2. 별칭 저장소 전환
Set-Location -Path Alias:
#3. New-PSDrive에 대한 별칭 조회
Get-Alias -Definition New-PSDrive
#4. 별칭 삭제
Remove-Item -Path .\npd
#5. 다시 New-PSDrive 별칭을 조회해 목록 삭제 확인
Get-ChildItem | Where-Object -Property Definition -eq -Value New-PSDrive
#6. 다시 파일 시스템 저장소로 전환한다.
Set-Location -Path C:\