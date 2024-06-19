execute unless data storage glm:interpreter evaluate.current.metadata.status run function glm:interpreter/evaluate/literal/function/before
execute if data storage glm:interpreter evaluate.current.metadata{status:"open"} run function glm:interpreter/evaluate/literal/function/open
execute if data storage glm:interpreter evaluate.stack[-1].metadata{status:"execute"} run function glm:interpreter/evaluate/literal/function/execute
execute if data storage glm:interpreter evaluate.current.metadata{status:"closed"} run function glm:interpreter/evaluate/literal/function/close