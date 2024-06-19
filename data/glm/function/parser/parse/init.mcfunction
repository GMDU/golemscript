data modify storage glm:parser parent set from storage glm:parser stack[-1]

execute if data storage glm:parser parent{type:"block"} run function glm:parser/parse/block/init
execute if data storage glm:parser parent{type:"expression"} run function glm:parser/parse/expression/init
execute if data storage glm:parser parent{type:"instruction"} run function glm:parser/parse/instruction/init
execute if data storage glm:parser parent{type:"line"} run function glm:parser/parse/line/init
execute if data storage glm:parser parent{type:"literal"} run function glm:parser/parse/literal/init

execute if data storage glm:parser {close:true} run function glm:parser/close/perform

execute unless data storage glm:parser current{consumed:true} run function glm:parser/parse/init