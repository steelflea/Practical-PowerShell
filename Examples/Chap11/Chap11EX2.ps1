$evtLog = 'Security' 
$Count = 7 
Invoke-Command –Computer DC1,DC2 –ScriptBlock{
    Param($x,$y) Get-EventLog –LogName $x –Newest $y 
} –ArgumentList $evtLog,$Count