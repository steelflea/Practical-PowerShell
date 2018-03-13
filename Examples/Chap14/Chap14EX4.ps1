# Windows Server 2016 실습 환경에서 끌어 오기 서버 배포의 기본 구성.

Configuration PullServer {
    param
    (
        [string[]]$ComputerName = "localhost"
    )

    Import-DscResource -ModuleName xPSDesiredStateConfiguration

    Node $ComputerName
    {

        #Windows 서버 DSC 서비스 기능 로드
        WindowsFeature DSCServiceFeature
        {
          Ensure = 'Present'
          Name = 'DSC-Service'
        }

        #웹 서비스 배포를 단순화 하기 위해 DSC 리소스 사용
        xDSCWebService PSDSCPullServer
        {
          Ensure = 'Present'
          EndpointName = 'PSDSCPullServer'
          Port = 8080
          PhysicalPath = "$env:SYSTEMDRIVE\inetpub\wwwroot\PSDSCPullServer"
          CertificateThumbPrint = 'AllowUnencryptedTraffic'
          ModulePath = "$env:PROGRAMFILES\WindowsPowerShell\DscService\Modules"
          ConfigurationPath = "$env:PROGRAMFILES\WindowsPowerShell\DscService\Configuration"
          State = 'Started'
          DependsOn = '[WindowsFeature]DSCServiceFeature'
          UseSecurityBestPractices = $false
        }
    }
}

