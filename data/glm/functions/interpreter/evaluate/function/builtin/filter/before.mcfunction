function glm:interpreter/evaluate/function/builtin/filter/validation/arg0
function glm:interpreter/evaluate/function/builtin/filter/validation/arg1
execute if data storage glm:interpreter error run return -1

data modify storage glm:interpreter evaluate.stack[-1].metadata.return set from storage glm:interpreter evaluate.stack[-1].args[0]
data modify storage glm:interpreter evaluate.stack[-1].metadata.return.value set value []
