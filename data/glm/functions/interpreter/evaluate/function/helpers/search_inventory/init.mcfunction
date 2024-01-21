data modify storage glm:interpreter helpers.search_inventory.target set from storage glm:interpreter helpers.search_inventory.key.namespace
data modify storage glm:interpreter helpers.search_inventory.target append value ":"
data modify storage glm:interpreter helpers.search_inventory.target append from storage glm:interpreter helpers.search_inventory.key.id[]

data modify storage glm:interpreter helpers.search_inventory.output set value {slot:-1b,id:"minecraft:air"}

scoreboard players set $slot glm.interpreter 0

function glm:interpreter/evaluate/function/helpers/search_inventory/iterate
