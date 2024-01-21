data modify storage bot:api/interpreter stdio.out set value []
data modify storage bot:api/interpreter stdio.error set value []
function bot:interpreter/evaluate/init
execute unless data storage bot:interpreter error run return -1

data modify storage bot:api/interpreter stdio.error append value {type: "literal", variant: "error", value: ""}
data modify storage bot:api/interpreter stdio.error[-1].value set from storage bot:interpreter error
