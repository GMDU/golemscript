execute unless data storage glm:interpreter evaluate.current.metadata.status run function glm:interpreter/evaluate/literal/array/before
execute if data storage glm:interpreter evaluate.current.metadata{status:"open"} run function glm:interpreter/evaluate/literal/array/open
execute if data storage glm:interpreter evaluate.stack[-1].metadata{status:"parameters"} run function glm:interpreter/evaluate/literal/array/parameters/init
execute if data storage glm:interpreter evaluate.stack[-1].metadata{status:"closed"} run function glm:interpreter/evaluate/literal/array/close