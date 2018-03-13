$NumOfNotepad=0
do
{
    $NumOfNotepad++
    $NotePadID=Start-Process -FilePath notepad
}
while ($NumOfNotepad -le 2)