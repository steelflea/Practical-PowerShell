workflow CreateADAccount{
    Read Number Of Users
    Read Number Of Computers
    Read Initial Password
    
    Sequence{
        Parallel{
            Create User OU
            Create Computer OU
        }

        Foreach -Parallel{
            Create User Account
            Enable User Account
        }

        Foreach -Parallel{
            Create Computer Account
        }
    }
}