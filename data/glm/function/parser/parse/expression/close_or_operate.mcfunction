execute if data storage glm:parser stack[-1].metadata{close_after_literal:true} run function glm:parser/parse/expression/close

execute unless data storage glm:parser {close:true} run function glm:parser/parse/expression/check_close
execute if data storage glm:parser {close:true} run return -1

execute unless data storage glm:parser current{flags:["whitespace"]} run data modify storage glm:parser stack[-1].metadata.status set value "infix"
data modify storage glm:parser current.consumed set value true