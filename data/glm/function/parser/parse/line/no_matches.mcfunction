execute if data storage glm:parser stack[-1].instruction if data storage glm:parser current{flags:["whitespace"]} run function glm:parser/parse/line/replace_with/instruction
execute unless data storage glm:parser temp{replaced:true} run function glm:parser/parse/line/replace_with/alphanumeric