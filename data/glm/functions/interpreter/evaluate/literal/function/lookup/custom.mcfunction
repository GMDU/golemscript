data modify storage moxlib:api/data/get target set from storage glm:interpreter registry.custom
data modify storage moxlib:api/data/get key.name set from storage glm:interpreter evaluate.stack[-1].name

function moxlib:api/data/get

execute if data storage moxlib:api/data/get {success:false} run return -1
data modify storage glm:interpreter evaluate.next.value set from storage moxlib:api/data/get output
data modify storage glm:interpreter evaluate.next.variant set value "custom"