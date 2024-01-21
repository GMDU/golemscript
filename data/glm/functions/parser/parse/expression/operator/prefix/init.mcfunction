execute unless data storage glm:parser stack[-1].metadata.registry run function glm:parser/parse/expression/operator/prefix/registry
function glm:parser/parse/expression/operator/check_registry

execute unless data storage glm:parser stack[-1].metadata{no_matches:true} run return -1
data remove storage glm:parser stack[-1].metadata.registry

execute unless data storage glm:parser stack[-1].metadata.operator run data modify storage glm:parser stack[-1].metadata merge value {status:"literal",no_matches:false}
execute if data storage glm:parser stack[-1].metadata.operator run function glm:parser/parse/expression/operator/prefix/add