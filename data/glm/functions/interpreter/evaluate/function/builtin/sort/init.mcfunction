execute unless data storage glm:interpreter evaluate.stack[-1].metadata.status run function glm:interpreter/evaluate/function/builtin/sort/before
execute if data storage glm:interpreter evaluate.stack[-1].metadata{status:"open"} run function glm:interpreter/evaluate/function/builtin/sort/open
execute if data storage glm:interpreter evaluate.stack[-1].metadata{status:"closed"} run function glm:interpreter/evaluate/function/builtin/sort/close
