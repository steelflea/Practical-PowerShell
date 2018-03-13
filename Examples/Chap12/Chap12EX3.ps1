#워크플로 일반 매개변수를 런타임 변수로 활용
workflow Test-ConnectionWF{
    Write-Output "$($PSComputerName)에 대한 ICMP 테스트"
    Test-Connection -ComputerName $PSComputerName
}