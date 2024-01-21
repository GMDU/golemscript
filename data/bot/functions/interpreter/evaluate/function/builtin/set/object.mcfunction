$execute if data storage glm:api/interpreter/function execute.return.value[{key:$(value)}] run data modify storage glm:api/interpreter/function execute.return.value[{key:$(value)}].value set from storage glm:interpreter evaluate.stack[-1].args[2]
$execute if data storage glm:api/interpreter/function execute.return.value[{key:$(value)}] run return -1

data modify storage glm:api/interpreter/function execute.return.value append value {key:[],value:{}}
data modify storage glm:api/interpreter/function execute.return.value[-1].key set from storage glm:interpreter evaluate.stack[-1].args[1].value
data modify storage glm:api/interpreter/function execute.return.value[-1].value set from storage glm:interpreter evaluate.stack[-1].args[2]
