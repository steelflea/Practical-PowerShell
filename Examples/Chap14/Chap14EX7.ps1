#끌어 오기 클라이언트 구성 스크립트 
Configuration PullClient {
    param(
        $GUID,
        $TargetNode
    )
    Node $TargetNode
    {
        LocalConfigurationManager 
        { 
            ConfigurationID = $GUID;
            RefreshMode = 'PULL';
            DownloadManagerName = 'WebDownloadManager';
            RebootNodeIfNeeded = $true;
            ConfigurationModeFrequencyMins = 15; 
            ConfigurationMode = 'ApplyAndAutoCorrect';
            DownloadManagerCustomData = @{
                ServerUrl = "http://pull:8080/PSDSCPullServer.svc"; 
                AllowUnsecureConnection = $true}
        }
    }
}