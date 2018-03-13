$NumOfShots = 0
while ($True)
{
    $MovingTarget = (Get-Date).Second
    if ($MovingTarget -eq $NumOfShots)
    {
        Write-Host "이동 목표를 맞추는데 사용된 슈팅 횟수(s):$NumOfShots"
        Break
    }
    $NumOfShots++
}
