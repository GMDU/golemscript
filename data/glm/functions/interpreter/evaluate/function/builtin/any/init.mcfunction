execute unless data storage glm:interpreter evaluate.stack[-1].metadata.return run function glm:interpreter/evaluate/function/builtin/any/before
execute if data storage glm:interpreter evaluate.current.metadata.return run function glm:interpreter/evaluate/function/builtin/any/open

execute unless data storage glm:interpreter evaluate.stack[-1].args[0].value[] run data modify storage glm:api/interpreter/function execute.return set from storage glm:interpreter evaluate.stack[-1].metadata.return
execute unless data storage glm:interpreter evaluate.stack[-1].args[0].value[] run return -1

function glm:interpreter/evaluate/function/builtin/any/set_proc
