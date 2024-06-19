function glm:parser/parse/block/check_close

execute if data storage glm:parser current{flags:["whitespace"]} run data modify storage glm:parser current.consumed set value true
execute unless data storage glm:parser current{consumed:true} run function glm:parser/parse/block/set_line