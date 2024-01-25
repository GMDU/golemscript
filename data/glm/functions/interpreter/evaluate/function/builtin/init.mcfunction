data remove storage glm:api/interpreter/function execute
data modify storage glm:interpreter temp.signature set from storage glm:interpreter evaluate.stack[-1].value
data modify storage glm:api/interpreter/function execute.args set from storage glm:interpreter evaluate.stack[-1].args
data modify storage glm:api/interpreter/function execute.metadata set from storage glm:interpreter evaluate.stack[-1].metadata

function glm:interpreter/evaluate/function/builtin/macro with storage glm:interpreter temp.signature
data modify storage glm:interpreter evaluate.stack[-1].metadata set from storage glm:api/interpreter/function execute.metadata
data modify storage glm:interpreter evaluate.stack[-1].args set from storage glm:api/interpreter/function execute.args
execute if data storage glm:api/interpreter/function execute{loop:true} run data modify storage glm:interpreter evaluate.loop set value true
data modify storage glm:interpreter evaluate.next set from storage glm:api/interpreter/function execute.next

data modify storage glm:interpreter evaluate.return_value set from storage glm:api/interpreter/function execute.return
