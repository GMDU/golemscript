function glm:interpreter/evaluate/function/builtin/sort/validation/arg0
function glm:interpreter/evaluate/function/builtin/sort/validation/arg1
execute if data storage glm:interpreter error run return -1

data remove storage glm:interpreter evaluate.return_value
data modify storage glm:interpreter evaluate.stack[-1].metadata.status set value "open"