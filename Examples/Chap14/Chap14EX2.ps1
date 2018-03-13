Configuration EnableServer2016Backup
{
	param(
		[string[]]$ComputerName=”localhost”
	)
	Node $ComputerName
	{
		WindowsFeature WindowsServerBackup
		{
			Ensure = “Present”
			Name = “Windows-Server-Backup”
		}
	}
}
