data modify storage glm:parser parent set from storage glm:parser stack[-1]

execute if data storage glm:parser parent{subtype:"action"} run function glm:parser/parse/instruction/action/init
execute if data storage glm:parser parent{subtype:"assign"} run function glm:parser/parse/instruction/assign/init
execute if data storage glm:parser parent{subtype:"command"} run function glm:parser/parse/instruction/command/init
execute if data storage glm:parser parent{subtype:"control"} run function glm:parser/parse/instruction/control/init
execute if data storage glm:parser parent{subtype:"func"} run function glm:parser/parse/instruction/func/init
execute if data storage glm:parser parent{subtype:"keyword"} run function glm:parser/parse/instruction/keyword/init
