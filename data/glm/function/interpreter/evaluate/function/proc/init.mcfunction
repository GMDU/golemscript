execute if data storage glm:interpreter evaluate.stack[-1].metadata{exclude:["proc"]} run function glm:interpreter/evaluate/function/proc/error_not_allowed
execute if data storage glm:interpreter evaluate.stack[-1].metadata{exclude:["proc"]} run return -1

execute if data storage glm:interpreter evaluate.stack[-1].value.value{variant:"alphanumeric"} run function glm:interpreter/evaluate/function/proc/alphanumeric
execute if data storage glm:interpreter evaluate.stack[-1].value.value{variant:"alphanumeric"} run return -1

execute unless data storage glm:interpreter evaluate.stack[-1].value.value{type:"block"} run function glm:interpreter/evaluate/function/proc/expression

function glm:interpreter/evaluate/function/proc/block
