$Users = Get-Content \\HRServer\Employee\users.txt

foreach ($User in $Users) { 
    try
    { 
        Get-ADUser -Identity $User -ErrorAction Stop
        Write-Output "$user 있음" 
    } 
    catch [Microsoft.ActiveDirectory.Management.ADIdentityNotFoundException]
    { 
        Write-Host "$User 없음" -ForegroundColor Red 
    } 
    catch 
    { 
        Write-Output "다른 에러 처리" 
    } 
}
