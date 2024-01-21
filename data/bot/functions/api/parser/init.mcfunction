execute unless data storage bot:api/parser init.target[] run data modify storage bot:api/parser init.error set value "[API] Expected a list of strings as input."
execute unless data storage bot:api/parser init.target[] run return 400

data modify storage bot:parser target set from storage bot:api/parser init.target
function bot:parser/init

data remove storage bot:api/parser init

execute if data storage bot:parser {exit:false} run data modify storage bot:api/parser init.error set from storage bot:parser output
execute if data storage bot:parser {exit:false} run return 400

data modify storage bot:api/parser init.output set from storage bot:parser output

return 200
