$Global:globalVar='전역 범위. 스크립트 밖에서 접근'

Function Check-FunctionScope
{
    $functionVar = '함수 범위. 함수내에서만 접근'
    "functionVar은 $functionVar"
    $Local:localVarInFunc='함수내에서 선언한 로컬 범위'
    $Script:scriptVarInFunc='함수내에서 선언한 스크립트 범위'
    $Global:globalVarInFunc='함수내에서 선언한 전역 범위'
    ''
    CallFrom-Function
}
''

$scriptVar = '스크립트 범위. 스크립트 내에서만 접근'
"scriptVar은 $scriptVar"
''

Check-FunctionScope
''
CallFrom-Script