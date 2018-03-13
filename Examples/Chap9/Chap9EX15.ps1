$Services = Get-Service 
ForEach ($Service in $Services) {   
    Write-Host "현재 서비스는 $($Service.name) 입니다." 
} 