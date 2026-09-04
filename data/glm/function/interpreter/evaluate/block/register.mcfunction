data modify storage glm:utils/data/collect target set from storage glm:interpreter evaluate.stack[-1].value
data modify storage glm:utils/data/collect key set value {type:"instruction",variant:"func"}

function glm:utils/data/collect

data modify storage glm:utils/array/reverse target set from storage glm:utils/data/collect output.match

function glm:utils/array/reverse

data modify storage glm:interpreter registry.custom prepend from storage glm:utils/array/reverse output[]
data modify storage glm:interpreter evaluate.stack[-1].value set from storage glm:utils/data/collect output.remain