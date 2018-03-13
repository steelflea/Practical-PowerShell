#워크플로에서 제외된 명령 실행
workflow Get-AliasWF{
    InlineScript{ Out-Host -InputObject "대상 컴퓨터의 별칭 목록을 가져옵니다."}
    InlineScript{ Get-Alias }
}

