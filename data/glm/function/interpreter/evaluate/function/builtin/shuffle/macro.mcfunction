$data modify storage glm:api/interpreter/function execute.return.value append from storage glm:api/interpreter/function execute.args[0].value[$(index)]
$data remove storage glm:api/interpreter/function execute.args[0].value[$(index)]