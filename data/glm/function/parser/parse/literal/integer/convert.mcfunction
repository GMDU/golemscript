data modify storage glm:parser stack[-1].metadata.status set value "closed"

data modify storage moxlib:api/math/array_to_integer target set from storage glm:parser stack[-1].value
function moxlib:api/math/array_to_integer

execute if data storage glm:parser stack[-1].metadata{inverted:true} run execute store result storage glm:parser stack[-1].value int -1 run data get storage moxlib:api/math/array_to_integer output
execute unless data storage glm:parser stack[-1].metadata{inverted:true} run execute store result storage glm:parser stack[-1].value int 1 run data get storage moxlib:api/math/array_to_integer output