$ProcessLists = Get-Process
foreach ($Process in $ProcessLists)
{
    if (($Process.PM/1MB) -le 250)
    {
        Continue
    }
    Write-Output ($Process.Name+'은 250MB 이상의 메모리를 사용한다.')
}