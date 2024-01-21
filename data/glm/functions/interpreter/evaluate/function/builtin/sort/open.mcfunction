data modify storage glm:utils sort.stack set value [{}]

data modify storage glm:utils sort.callback set value "glm:interpreter/evaluate/function/builtin/sort/callback/init"
execute unless data storage glm:api/interpreter/function execute.args[1] run data modify storage glm:utils sort.callback set value "glm:interpreter/evaluate/function/builtin/sort/callback/value"

execute if data storage glm:api/interpreter/function execute.metadata.sort run data modify storage glm:utils sort.stack set from storage glm:api/interpreter/function execute.metadata.sort
execute unless data storage glm:api/interpreter/function execute.metadata.sort run data modify storage glm:utils sort.stack[-1].target set from storage glm:api/interpreter/function execute.args[0].value

function glm:interpreter/utils/sort/iterate

execute unless data storage glm:utils sort.stack[] run data modify storage glm:api/interpreter/function execute.metadata.status set value "closed"