data remove storage glm:interpreter error
data modify storage glm:api/interpreter stdio.out set value []
data modify storage glm:api/interpreter stdio.error set value []
function glm:interpreter/evaluate/init
execute unless data storage glm:interpreter error run return -1

data modify storage glm:api/interpreter stdio.error append value {type: "literal", variant: "error", value: ""}
data modify storage glm:api/interpreter stdio.error[-1].value set from storage glm:interpreter error
