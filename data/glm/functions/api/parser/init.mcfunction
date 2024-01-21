execute unless data storage glm:api/parser init.target[] run data modify storage glm:api/parser init.error set value "[API] Expected a list of strings as input."
execute unless data storage glm:api/parser init.target[] run return 400

data modify storage glm:parser target set from storage glm:api/parser init.target
function glm:parser/init

data remove storage glm:api/parser init

execute if data storage glm:parser {exit:false} run data modify storage glm:api/parser init.error set from storage glm:parser output
execute if data storage glm:parser {exit:false} run return 400

data modify storage glm:api/parser init.output set from storage glm:parser output

return 200
