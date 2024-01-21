execute if data storage glm:api/interpreter/function execute.metadata.return run data modify storage glm:api/interpreter/function execute.metadata.return.value append from storage glm:interpreter evaluate.return_value

execute unless data storage glm:api/interpreter/function execute.metadata.return run function glm:interpreter/evaluate/function/builtin/map/before
execute if data storage glm:api/interpreter/function execute.args[0].value[] run function glm:interpreter/evaluate/function/builtin/map/open

execute unless data storage glm:api/interpreter/function execute.args[0].value[] run data modify storage glm:api/interpreter/function execute.return set from storage glm:api/interpreter/function execute.metadata.return