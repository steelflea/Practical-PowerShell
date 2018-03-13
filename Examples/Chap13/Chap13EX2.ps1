Workflow Show-SomeInfoWF{
    Write-OutPut -InputObject "착한 치과 정보를 가져옵니다."
    Start-Sleep -Seconds 5
    Write-Output -InputObject "주위의 착한 치과를 검색 중입니다."
    Start-Sleep -Seconds 5
    Checkpoint-Workflow
    Write-Output -InputObject "남서쪽 방향 50m 거리에 있습니다."
}