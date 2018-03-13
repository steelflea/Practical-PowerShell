Configuration <구성이름>
{
	param(
		[데이터형식]$대상노드=<기본 값>
		:
		:
	)
	Node $대상노드
	{
		DSC리소스 <리소스 이름>
		{
			[Ensure = <Absent | Present>] 
			Name = <리소스이름>
			:
			:
			[DependsOn = [리소스 형식]<리소스 이름>
		}
	}
}