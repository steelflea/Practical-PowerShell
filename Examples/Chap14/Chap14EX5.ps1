Configuration MyDomainWebsite
{
    param
    (
        [string[]]$ComputerName = "localhost"
    )

    Import-DscResource -ModuleName PSDesiredStateConfiguration

    Node $ComputerName
    {
        #IIS 역할 설치
        WindowsFeature IIS
        {
            Ensure = “Present”
            Name = “Web-Server”
        }
        #ASP.NET 4.6 설치
        WindowsFeature ASPNET46
        {
            Ensure = “Present”
            Name = “Web-Asp-Net45”
        }
    }
}