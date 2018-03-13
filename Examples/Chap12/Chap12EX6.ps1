#대상 컴퓨터를 매개변수로 받는다.
Param($Target)

#컴퓨터의 주요 하드웨어 제원
$MB = Get-WmiObject Win32_BaseBoard -ComputerName $Target
$CPU = Get-WmiObject Win32_Processor -ComputerName $Target
$VGA = Get-WmiObject Win32_VideoController -ComputerName $Target
$GenInfo= Get-WmiObject Win32_ComputerSystem -ComputerName $Target
$Name = $GenInfo.Name
$RAM = $GenInfo.TotalPhysicalMemory

#새로운 컴퓨터 정보 개체 생성
$ComInfo = new-object PSObject -Property @{
    'Motherboard' = $MB.Product
    'Name' = $Name
    'CPU' = $CPU.Name
    'Cores' = $CPU.NumberOfCores
    'GPU' = $VGA.Name
    'RAM' = [Math]::Round($RAM/1GB)
}
return $ComInfo