#AD의 PowerShell 전문가 그룹 관리
try
{
    $ScriptGuys= Get-Content \\HRServer\Employee\ScriptGuyList.txt -EA Stop
}
catch
{
    $ErrorMsg=$_.Exception.Message   #에러 내용
    $ErrorItem=$_.Exception.ItemName #에러 항목
    Send-OutlookMail -To Admin@Godev.kr -Subject "HRServer 파일을 조회 에러" `
    -Body "'$ErrorItem' 파일 읽기 실패. 에러 내용: '$ErrorMsg'"
    Break
}
finally
{
    $ExecutionTime = Get-Date
    $LogText= "이 스크립트가 '$ExecutionTime'에 실행되었습니다."
    $LogText | Out-File -FilePath d:\logs\ADGroupScript.log -Append 
}

$ADPSUsers=Get-ADGroupMember "PS_Expert" 
Foreach($User in $ADPSUsers)
{
    If($ScriptGuys -notcontains $User)
    {
        Remove-ADGroupMember -Identity "PS_Expert" -User $User
    }
}