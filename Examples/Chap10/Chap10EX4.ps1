#AD의 PowerShell 전문가 그룹 관리
$ScriptGuys= Get-Content \\HRServer\Employee\ScriptGuyList.txt
$ADPSUsers=Get-ADGroupMember "PS_Expert"
 
Foreach($User in $ADPSUsers)
{
    If($ScriptGuys -notcontains $User)
    {
        Remove-ADGroupMember -Identity "PS_Expert" -User $User
    }
}