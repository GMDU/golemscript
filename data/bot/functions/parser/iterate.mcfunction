data modify storage glm:parser current.value set from storage glm:parser iterate.target[0]
data remove storage glm:parser iterate.target[0]
data modify storage glm:parser current.flags append from storage glm:parser next.flags[]
data remove storage glm:parser next

function glm:parser/characters/check
execute unless data storage glm:parser current{consumed:true} run function glm:parser/parse/init

data merge storage glm:parser {current:{consumed:false,flags:[]},temp:{}}
execute if data storage glm:parser iterate.target[] if data storage glm:parser {raise:""} run function glm:parser/iterate