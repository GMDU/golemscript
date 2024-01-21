function glm:interpreter/evaluate/function/builtin/find/validation/arg0
function glm:interpreter/evaluate/function/builtin/find/validation/arg1
execute if data storage glm:interpreter error run return -1

data modify storage glm:interpreter evaluate.stack[-1].metadata.open set value true
