workflow New-VMsWF{
    #만들 VM의 수
    $VMs= 1..10

    Foreach -Parallel ($vm in $VMs)
    {
        #VDI를 만들기 위한 기본 정보 
        $VMName = "VDI$vm"
        [int64]$VMRam=512MB
        $VMPath="M:\VMs\VDIs\"
        $VHDPath="M:\VMs\VDIs\$VMName\"
        $HyperV_Host="LW-MCT-WS2016"
        $VMSwitch="Private Network"

        #새로운 가상 하드디스크를 만든다.
        New-VHD -Path "$VHDPath$VMName.vhdx" -SizeBytes 10GB
        #새로운 가상 머신을 만든다.
        New-VM -Path "$VMPath" -Name $VMName -VHDPath "$VHDPath$VMName.vhdx" `
        -MemoryStartupBytes $VMRam -ComputerName $HyperV_Host 
        #만든 가상 머신에 가상 스위치를 연결한다.
        Connect-VMNetworkAdapter -VMName $VMName -SwitchName $VMSwitch -ComputerName $HyperV_Host
    }
}

