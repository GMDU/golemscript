data modify storage glm:utils sort.stack set value [{}]

data modify storage glm:utils sort.callback set value "glm:interpreter/evaluate/function/builtin/sort/callback/init"
execute unless data storage glm:interpreter evaluate.stack[-1].args[1] run data modify storage glm:utils sort.callback set value "glm:interpreter/evaluate/function/builtin/sort/callback/value"

execute if data storage glm:interpreter evaluate.stack[-1].metadata.sort run data modify storage glm:utils sort.stack set from storage glm:interpreter evaluate.stack[-1].metadata.sort
execute unless data storage glm:interpreter evaluate.stack[-1].metadata.sort run data modify storage glm:utils sort.stack[-1].target set from storage glm:interpreter evaluate.stack[-1].args[0].value

function glm:interpreter/utils/sort/iterate

execute unless data storage glm:utils sort.stack[] run data modify storage glm:interpreter evaluate.stack[-1].metadata.status set value "closed"