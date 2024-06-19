function glm:interpreter/evaluate/function/builtin/reduce/validation/arg0
function glm:interpreter/evaluate/function/builtin/reduce/validation/arg2
execute if data storage glm:interpreter error run return -1

data modify storage glm:api/interpreter/function execute.metadata.return set from storage glm:api/interpreter/function execute.args[1]
