data remove storage glm:parser parsed.metadata
data modify storage glm:parser parent set from storage glm:parser stack[-1]

execute if data storage glm:parser parent{subtype:"assign"} run function glm:parser/parse/instruction/assign/child_closed
execute if data storage glm:parser parent{subtype:"command"} run function glm:parser/parse/instruction/command/child_closed
execute if data storage glm:parser parent{subtype:"control"} run function glm:parser/parse/instruction/control/child_closed
execute if data storage glm:parser parent{subtype:"func"} run function glm:parser/parse/instruction/func/child_closed
