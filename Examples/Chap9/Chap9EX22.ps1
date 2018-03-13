$NumOfNotepad=0
$PIDs = New-Object System.Collections.ArrayList
do
{
    $NumOfNotepad++
    $NotePadID=Start-Process -FilePath notepad -PassThru
    $PIDs.Add($NotePadID.Id)
}
while ($NumOfNotepad -le 3)

Start-Sleep -Seconds 1

do
{
    $NumOfNotepad--
    Stop-Process -Id $PIDs[$NumOfNotepad]
}
until (0 -ge $NumOfNotepad)
$PIDs.Clear()