data modify storage glm:utils/data/get target set from storage glm:interpreter registry.builtin
data modify storage glm:utils/data/get target append from storage glm:interpreter registry.external[]
data modify storage glm:utils/data/get key.name set from storage glm:interpreter evaluate.stack[-1].name

function glm:utils/data/get

execute if data storage glm:utils/data/get {success:false} run return -1

data modify storage glm:interpreter evaluate.next.value set from storage glm:utils/data/get output
data modify storage glm:interpreter evaluate.next.variant set value "builtin"