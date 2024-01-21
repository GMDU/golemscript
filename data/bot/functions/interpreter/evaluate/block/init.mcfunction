execute unless data storage glm:interpreter evaluate.current.metadata.status run function glm:interpreter/evaluate/block/before
execute if data storage glm:interpreter evaluate.stack[-1].metadata{status:"open"} run function glm:interpreter/evaluate/block/open
execute if data storage glm:interpreter evaluate.stack[-1].metadata{status:"closed"} run function glm:interpreter/evaluate/block/close