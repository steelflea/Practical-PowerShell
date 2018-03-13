$evtLog = 'Security' 
$Count = 7 
Invoke-Command –Computer DC1,Dc2 –ScriptBlock{   
	Get-EventLog –LogName $evtLog –Newest $Count 
} 