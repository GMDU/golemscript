function glm:parser/close/check
execute if data storage glm:parser stack[-1].metadata{close:{closed:true,consume:true}} run data modify storage glm:parser current.consumed set value true
execute if data storage glm:parser stack[-1].metadata{close:{closed:true}} run function glm:parser/parse/expression/close