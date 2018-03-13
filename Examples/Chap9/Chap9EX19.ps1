$NumOfNotepad=0
do
{
    $NumOfNotepad++
    $NotePadID=Start-Process -FilePath notepad
}
until ($NumOfNotepad -gt 2)
