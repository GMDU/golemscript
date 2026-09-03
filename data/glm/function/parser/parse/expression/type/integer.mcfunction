data modify storage glm:utils/string/filter target set value ["-","0","1","2","3","4","5","6","7","8","9"]
data modify storage glm:utils/string/filter key set from storage glm:parser current.value
function glm:utils/string/filter

execute if data storage glm:utils/string/filter {output:false} run data modify storage glm:parser expression.type set value {type:"literal",variant:"integer"}