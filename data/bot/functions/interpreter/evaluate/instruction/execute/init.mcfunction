data modify storage glm:interpreter stack[-1].metadata.status set value "closed"

execute if data storage glm:interpreter evaluate.current{subtype:"assign"} run function glm:interpreter/evaluate/instruction/execute/assign/init
execute if data storage glm:interpreter evaluate.current{subtype:"control"} run function glm:interpreter/evaluate/instruction/execute/control/init
execute if data storage glm:interpreter evaluate.current{subtype:"keyword"} run function glm:interpreter/evaluate/instruction/execute/keyword/init
execute if data storage glm:interpreter evaluate.current{subtype:"command"} run function glm:interpreter/evaluate/instruction/execute/command/init
