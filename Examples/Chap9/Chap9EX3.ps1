Function global:CallFrom-Function
{
    $callByFunction = '다른 함수에서 불렀어요.'
    "callByFunction 변수는 $callByFunction"
}

Function global:CallFrom-Script
{
    $callByScript = '다른 스크립트에서 불렀어요.'
    "callByScript 변수는 $callByScript"
}