execute unless data storage glm:api/interpreter/function execute.metadata.status run function glm:interpreter/evaluate/function/builtin/sort/before
execute if data storage glm:api/interpreter/function execute.metadata{status:"open"} run function glm:interpreter/evaluate/function/builtin/sort/open
execute if data storage glm:api/interpreter/function execute.metadata{status:"closed"} run function glm:interpreter/evaluate/function/builtin/sort/close
