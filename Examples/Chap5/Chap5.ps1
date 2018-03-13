#그림 5.4
$Msg=@("Hello","PowerShell","World")
Write-Host -Object $Msg -ForegroundColor White -BackgroundColor Black -Separator ♡

#p108
#Foreach-Object 기본구문을 잘못 사용한 예
Get-ChildItem -Path D:\Test -File | ForEach-Object -MemberName Encrypt,FullName
#Foreach-Object 고급 구문으로 올바로 작성한 예 
Get-ChildItem -Path D:\Test -File | ForEach-Object -Process {$_.Encrypt();$_.FullName}
#100개의 무작위 값 얻기
1..100 | ForEach-Object -Process {Get-Random}