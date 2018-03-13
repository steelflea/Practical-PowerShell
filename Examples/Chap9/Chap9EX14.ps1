$x = Get-Service 
ForEach ($y in $x) {   
    Write "현재 서비스는 $($y) 입니다." 
} 