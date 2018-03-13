$ServiceName = "Hyper-V 가상 컴퓨터 관리"
$HostName = hostname
$Service = Get-Service -DisplayName $ServiceName -ErrorAction SilentlyContinue

If (-Not $Service){
    $ServiceName + "는" + $HostName + "에 설치되지 않았습니다."
    Write-Host "Hyper-V 서비스를 설치합니다."
    Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
} ElseIf($Service.Status -eq "Running"){
    $ServiceName + "가 동작 중입니다."
} Else {
    $ServiceName + "가 중지되었습니다."
    Start-Service -Name $Service.Name
}

