$evtLog = 'Security' 
$Count = 7 
Invoke-Command –Computer DC1,DC2 –ScriptBlock{
    Get-EventLog –LogName $Using:evtLog –Newest $Using:Count 
}
