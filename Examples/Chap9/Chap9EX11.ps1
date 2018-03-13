#환경 변수에서 컴퓨터 이름을 가져온다,
$name = Get-Content Env:\COMPUTERNAME
#Switch 문 블록
switch -Wildcard ($name) {
	"SEOUL-CL1*" {
		Write-Host "이 컴퓨터는 클라이언트다."
	}
	"SEOUL*" {
		Write-Host "이 컴퓨터는 SEOUL에 있다."
	}
	"*DC*" {
		Write-Host "이 컴퓨터는 도메인 컨트롤러다."
	}
	"*1" {
		Write-Host "첫 번째 컴퓨터다."
	}
	Default {
		Write-Host "일치하는 내용이 없다."
	}
}