$drive = Get-CimInstance -ClassName Win32_LogicalDisk `
-Filter "DeviceID='C:'"

switch ($drive.DriveType) {
	3 { Write "로컬 고정 디스크" }
	5 { Write "광학 디스크 장치" }
	Default { Write "기타 장치" }
}
