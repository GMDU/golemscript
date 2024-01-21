data modify storage glm:interpreter evaluate.parameters.result set value {type:"undefined",variant:undefined}

function glm:interpreter/evaluate/literal/resource/parameters/check

data modify storage glm:interpreter evaluate.parameters.result.parameters set from storage glm:interpreter evaluate.stack[-1].parameters
data remove storage glm:interpreter evaluate.stack[-1]
data modify storage glm:interpreter evaluate.next set from storage glm:interpreter evaluate.parameters.result