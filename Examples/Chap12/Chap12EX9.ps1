#Active Directory 계정 프로비저닝 워크플로
workflow Provision-ADAccountWF{
    $Users= 1..10
    $Computers=1..10
    $Password=ConvertTo-SecureString -AsPlainText -String "Pa`$`$w0rd" -Force

    Sequence{
        Parallel{
            New-ADOrganizationalUnit -Path "DC=MyDomain,DC=local" -Name Employees
            New-ADOrganizationalUnit -Path "DC=MyDomain,DC=local" -Name MyComputers           
        }

        Foreach -Parallel ($user in $Users)
        {
            New-ADUser -AccountPassword $password  -Name "User$user" `
            -Path "OU=Employees,DC=MyDomain,DC=local" -SamAccountName "User$user" `
            -UserPrincipalName "User$User@mydomain.local"
            Enable-ADAccount -Identity "User$user"
        }

        Foreach -Parallel ($com in $Computers)
        {
            New-ADComputer -Path "OU=MyComputers,DC=MyDomain,DC=local" -Name "Com$com"
        }

    }
}