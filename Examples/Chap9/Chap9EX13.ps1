#컴퓨터 이름 컬렉션을 변수에 저장한다.
$ComputerNames = Get-Content ComputerNames.txt
#컬렉션의 컴퓨터 이름 목록을 하나씩 처리한다. 
ForEach ($pcname in $ComputerNames) {   
    Write "현재 컴퓨터 이름은 $pcname 입니다." 

}
