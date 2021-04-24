## 정오표
제보해주신 독자 여러분 감사합니다.  
정오표는 책을 증쇄할 때 반영하겠습니다.  
Thanks to **류태현 님**

|페이지|원본|수정|
|------|---|---|
|P9|현재 WMF는 2.0 ~ 5.2 버전까지 릴리스되었다.|현재 WMF는 2.0 ~ 5.1 버전까지 릴리스되었다.|
|P12|.NET 코어의 최신 버전은 6.0이다.|파워쉘 코어의 최신 버전은 7.1이다.|
|P33|화면에 출력하는 PowerShell Command인 Write-OutPut의 새로운 별칭인 wop를 만든다|화면에 출력하는 PowerShell Command인 Write-OutPut의 새로운 별칭인 wo를 만든다.|
|P77|구문 형식 Sort-Object [-Property] <개체[]>] [-Descending] [-CaseSensitive] | 구문 형식 Sort-Object [[-Property] <개체[]>] [-Descending] [-CaseSensitive] |
|P87, LN6|3	/ 경고출력	/ 경고 레코드	/ Write-Debug	/ 3>&1 | 3	/ 경고출력	/ 경고 레코드	/ Write-Warning	/ 3>&1 |
|P87, LN8|5	/ 디버그출력	/ 디버그 레코드	/ Write-Warning	/ 5>&1 | 5	/ 디버그출력	/ 디버그 레코드	/ Write-Debug	/ 5>&1  |
|P90, LN16|-Separate|-Separator|
|P91|Out-GrideView에 대해서는 다음 절에서 설명한다.|Out-GridView에 대해서는 다음 절에서 설명한다.|
|P95|Out-File -FilePath ServiceList.txt | Out-File -FilePath ServiceList.csv |
|P106|예를 들어 CSV파일은 단순 데이터 구조에 접합하며|예를 들어 CSV파일은 단순 데이터 구조에 적합하며|
|P108|-Property / 가져온 문자열에 대한 대체 제목을 지정한다. | -Header /	가져온 문자열에 대한 대체 제목을 지정한다.|
|P112|명령 구문은 사용하면 에러를 표시한다. |명령 구문을 사용하면 에러를 표시한다. |
|P121|1. SVR1에서 SVR2Share라는 드라이브 이름으로 새로운 임시 PSDrive를 만든다. |1. SVR1에서 SVR1Share라는 드라이브 이름으로 새로운 임시 PSDrive를 만든다. |
|P135|Active Directory 환경에서 컴퓨터를 식별할 때는 FQDN(Fully Qualifyed Domain Name) 형식을 사용한다.|Active Directory 환경에서 컴퓨터를 식별할 때는 FQDN(Fully Qualified Domain Name) 형식을 사용한다.|
|P142|구문 형식 Enter-PSSession [ -ComputerName ] <문자열> [ -Authentication {인증 메커니즘} ] [ -ConfigurationName <문자열> ] [ -Credential <자격증명> ] [ -Port <정수>]> ] [ -SessionOption <세션 옵션> ] [ -UseSSL ]|구문 형식 Enter-PSSession [ -ComputerName ] <문자열> [ -Authentication {인증 메커니즘} ] [ -ConfigurationName <문자열> ] [ -Credential <자격증명> ] **[ -Port <정수> ]** [ -SessionOption <세션 옵션> ] [ -UseSSL ]|
|P159|또한 `t 나 탭으로 `n 은 개행 문자로 사용된다.|또한 `t 는 탭으로 `n 은 개행 문자로 사용된다.|
|P165|(Chap11Lab2.ps1)|(Chap8Lab2.ps1)|
|P214|ISE에서 편집창에서 |ISE 편집창에서|
|P233|Invoke-Command -ComputerName DC1 -ScriptBlock { Get-WindowsFeatures ~ |Invoke-Command -ComputerName DC1 -ScriptBlock { **Get-WindowsFeature** ~|
|P237| ~ Remove-Session | ~ Remove-PSSession |
|P259, LN2 |1. 워크플로 일반 매개변수 : about_WorkflowComonParameters | 워크플로 일반 매개변수 : about_WorkflowCommonParameters|
|P259, LN3 |2. 활동 일반 매개변수 : about_ActivityComonParameters|활동 일반 매개변수 : about_ActivityCommonParameters|
|P259, LN11|https://msdn.microsoft.com/ko-kr/library/windows/desktop/microsoft.powershell.activities.psworkflowruntimevariable(v=vs.85)aspx (Not Found)|https://docs.microsoft.com/en-us/dotnet/api/microsoft.powershell.activities.psworkflowruntimevariable|
|P273, LN1|-AsJob 매개변수를 추가해 원격 작업을 백그라운드로 작업으로 처리할 수 있다.|-AsJob 매개변수를 추가해 원격 작업을 백그라운드 작업으로 처리할 수 있다.|
|P273, LN6|-AsJob 매개변수를 추가해 WMI 작업을 백그라운드로 작업으로 처리할 수 있다.|-AsJob 매개변수를 추가해 WMI 작업을 백그라운드 작업으로 처리할 수 있다.|
|P284|다음 명령을 실행을 보류하고ㅡ|다음 명령 실행을 보류하고,|
|P300|WindowsFeture 리소스를 사용하면|WindowsFeature 리소스를 사용하면|
|P304|https://docs.microsoft.com/ko-kr/powershell/dsc/builtinresource (Not Found)|https://docs.microsoft.com/ko-kr/powershell/scripting/dsc/resources/resources?view=powershell-5.1|
|P306|그림 14.11에게 MOF 파일을 컴파일하는 과정을 볼 수 있다.|그림 14.11에서 MOF 파일을 컴파일하는 과정을 볼 수 있다.|
|P309|Windows PowerShell 사용에 필요한 상태 구성(DCS) 서비스|Windows PowerShell 사용에 필요한 상태 구성(DSC) 서비스|
|P312|'C:\Program Files\WindowsPowerShell\DcsService'에 넣어야 한다|'C:\Program Files\WindowsPowerShell\DscService'에 넣어야 한다|
|P314|경로(C:\Program Files\WindowsPowerShell\DcsService\Configuration)에 복사한다.|경로(C:\Program Files\WindowsPowerShell\DscService\Configuration)에 복사한다.|
|P315|https://docs.microsoft.com/ko-kr/powershell/dsc/metaconfig (Not Found)|https://docs.microsoft.com/ko-kr/powershell/scripting/dsc/managing-nodes/metaconfig?view=powershell-5.1|
