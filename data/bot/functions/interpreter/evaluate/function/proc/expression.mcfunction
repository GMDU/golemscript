data modify storage glm:interpreter temp.block set value {type:"block",value:[{type:"instruction",subtype:"command",variant:"return",args:[]}]}
data modify storage glm:interpreter temp.block.value[0].args append from storage glm:interpreter evaluate.stack[-1].value.value
data modify storage glm:interpreter evaluate.stack[-1].value.value set from storage glm:interpreter temp.block
