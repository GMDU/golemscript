function glm:parser/characters/escape
execute unless data storage glm:parser current{flags:["meta"]} run function glm:parser/characters/whitespace
execute unless data storage glm:parser current{flags:["meta"]} run function glm:parser/characters/newline
execute unless data storage glm:parser current{flags:["meta"]} unless data storage glm:parser current{flags:["consumes"]} run function glm:parser/characters/comment

execute if data storage glm:parser current{comment:true} run data modify storage glm:parser current.consumed set value true