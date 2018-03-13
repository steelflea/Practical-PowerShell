$name = Get-Content Env:\COMPUTERNAME
Switch -Wildcard ($name) {
	"SEOUL-CL1*" {
		Write "이 컴퓨터는 클라이언트다."
		break
	}
	"SEOUL*" {
		Write "이 컴퓨터는 BUSAN에 있다."
	}
	"*DC*" {
		Write "이 컴퓨터는 도메인 컨트롤러다."
		break
	}
	"*1" {
		Write "첫 번째 컴퓨터다."
	}
	Default {
		Write "일치하는 내용이 없다."
	}
}