function glm:interpreter/evaluate/function/builtin/reduce/validation/arg0
function glm:interpreter/evaluate/function/builtin/reduce/validation/arg2
execute if data storage glm:interpreter error run return -1

data modify storage glm:interpreter evaluate.stack[-1].metadata.return set from storage glm:interpreter evaluate.stack[-1].args[1]
