#워크플로에서 스크립트 실행
workflow Run-PSScriptWF{
    Param($PSComputerName)
    $MachineInfo=InlineScript {
        \\CA1\SharePSScript\Chap12EX4.ps1 -Target $using:PSComputerName
    } -PSPersist $true
    Write-Output "[### $($MachineInfo.Name)의 시스템 정보 ###]"
    Write-Output "1. 메인보드는 $($MachineInfo.Motherboard)입니다."
    Write-Output "2. CPU는 $($MachineInfo.CPU)이며, 코어는 $($MachineInfo.Cores)개 입니다."
    Write-Output "3. 메모리는 $($MachineInfo.RAM)GB 입니다."
    Write-Output "4. 그래픽 카드는 $($MachineInfo.GPU)입니다."
}

