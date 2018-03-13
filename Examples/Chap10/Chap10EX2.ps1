[CmdletBinding()]
Param(
	[Parameter(Position=0,Mandatory=$True)]
	[double]$Height,
    [Parameter(Position=1,Mandatory=$True)]
	[double]$Weight
) 

# BMI 계산 함수
function Calculate-BMI([double]$Height, [double]$Weight)
{
    $BMI=$Weight / ([Math]::Pow($Height,2))
    return $BMI
}
# 비만도 체크 함수
function Check-ObesityIndex ([double]$BMI)
{
    Write-Debug "`$BMI는 $BMI"
    if ($BMI -ge 35)
    {
        Write-Host "아주 위험! 고도 비만 입니다."
        Write-Debug "'$BMI'는 35보다 크거나 같다"
    }
    elseif(($BMI -ge 30) -and ($BMI -lt 35))
    {
        Write-Host "위험! 중등도 비만 입니다."
        Write-Debug "'$BMI'는 30이상 35미만이다."
    }
    elseif(($BMI -ge 25) -and ($BMI -lt 30))
    {
        Write-Host "경고! 경도 비만 입니다."
        Write-Debug "'$BMI'는 25이상 30미만이다."
    }
    elseif(($BMI -ge 23) -and ($BMI -le 24.9))
    {
        Write-Host "주의! 과체중 입니다."
        Write-Debug "'$BMI'는 23이상 24.9미만이다."
    }
    elseif(($BMI -ge 18.5) -and ($BMI -le 22.9))
    {
        Write-Host "와우! 정상 입니다."
        Write-Debug "'$BMI'는 18.5이상 22.9미만이다."
    }
    else
    {
        Write-Host "주의! 저체중 입니다."
        Write-Debug "'$BMI'는 18.5미만이다."
    }
}
#BMI 계산 함수를 호출하고 계산 결과를 변수에 저장한다.
$ResultBMI=Calculate-BMI $Height $Weight
#BMI 값을 전달 받아 비만도 체크 함수를 호출한다.
Check-ObesityIndex $ResultBMI