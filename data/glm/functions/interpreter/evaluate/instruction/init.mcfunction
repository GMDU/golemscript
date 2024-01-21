execute unless data storage glm:interpreter evaluate.current.metadata.status run function glm:interpreter/evaluate/instruction/before
execute if data storage glm:interpreter evaluate.current.metadata{status:"open"} run function glm:interpreter/evaluate/instruction/open

execute if data storage glm:interpreter evaluate.next{type:"block"} unless data storage glm:interpreter evaluate.stack[-1].metadata{status:"execute"} run function glm:interpreter/evaluate/instruction/ignore_block

execute unless data storage glm:interpreter evaluate.stack[-1].metadata.stack[] run data modify storage glm:interpreter evaluate.stack[-1].metadata.status set value "execute"

execute if data storage glm:interpreter evaluate.stack[-1].metadata{status:"execute"} run function glm:interpreter/evaluate/instruction/execute/init