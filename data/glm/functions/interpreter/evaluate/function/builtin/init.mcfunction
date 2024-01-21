data remove storage glm:api/interpreter/function execute
data modify storage glm:api/interpreter/function execute.signature set from storage glm:interpreter evaluate.stack[-1].value
data modify storage glm:api/interpreter/function execute.args set from storage glm:interpreter evaluate.stack[-1].args

function glm:interpreter/evaluate/function/builtin/macro with storage glm:api/interpreter/function execute.signature

data modify storage glm:interpreter evaluate.return_value set from storage glm:api/interpreter/function execute.return
