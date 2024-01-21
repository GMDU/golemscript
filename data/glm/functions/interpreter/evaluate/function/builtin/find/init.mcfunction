execute unless data storage glm:api/interpreter/function execute.metadata.open run function glm:interpreter/evaluate/function/builtin/find/before
execute if data storage glm:interpreter evaluate.current.metadata.open run function glm:interpreter/evaluate/function/builtin/find/open

execute unless data storage glm:api/interpreter/function execute.metadata.open run return -1
execute unless data storage glm:api/interpreter/function execute.args[0].value[] run data modify storage glm:api/interpreter/function execute.return set value {type: "undefined", value: false}
execute unless data storage glm:api/interpreter/function execute.args[0].value[] run return -1

function glm:interpreter/evaluate/function/builtin/find/set_proc
