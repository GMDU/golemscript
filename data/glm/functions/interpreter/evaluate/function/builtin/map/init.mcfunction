execute if data storage glm:interpreter evaluate.stack[-1].metadata.return run data modify storage glm:interpreter evaluate.stack[-1].metadata.return.value append from storage glm:interpreter evaluate.return_value

execute unless data storage glm:interpreter evaluate.stack[-1].metadata.return run function glm:interpreter/evaluate/function/builtin/map/before
execute if data storage glm:interpreter evaluate.stack[-1].args[0].value[] run function glm:interpreter/evaluate/function/builtin/map/open

execute unless data storage glm:interpreter evaluate.stack[-1].args[0].value[] run data modify storage glm:api/interpreter/function execute.return set from storage glm:interpreter evaluate.stack[-1].metadata.return