function ConvertTo-InchToMeter{
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$True)]
        [int]$Inch
    )
    BEGIN
    {
        #인치를 미터로 변환하는 계수
        $Const=2.54
    }
    PROCESS
    {
        Write-Verbose -Message "변환 할 인치 (in): $Inch"
        Write-Verbose -Message "인치를 미터로 변환 합니다."
        $result=($Inch * $Const) / 100
        Write-Verbose -Message "변환 결과 (m): $result"
    }
    END
    {}
}