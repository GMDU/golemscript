execute unless data storage glm:parser stack[-1].metadata.registry run function glm:parser/parse/expression/operator/infix/registry
function glm:parser/parse/expression/operator/check_registry

execute if data storage glm:parser stack[-1].metadata{no_matches:true} if data storage glm:parser stack[-1].metadata.operator run function glm:parser/parse/expression/operator/infix/add

execute if data storage glm:parser stack[-1].metadata{no_matches:true} unless data storage glm:parser stack[-1].metadata.operator run data modify storage glm:parser raise set value '["[Expression - Operator] Unexpected \'",{"storage":"glm:parser","nbt":"current.value"},"\' expected valid operator."]'