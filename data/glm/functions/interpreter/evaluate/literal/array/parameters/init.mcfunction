execute store result score .index bot.interpreter run data get storage glm:interpreter evaluate.result.value
data modify storage glm:interpreter evaluate.parameters.result set value {type:"undefined",value: false}

function glm:interpreter/evaluate/literal/array/parameters/iterate

data modify storage glm:interpreter evaluate.parameters.result.parameters set from storage glm:interpreter evaluate.stack[-1].parameters
data modify storage glm:interpreter evaluate.parameters.result.metadata.status set value "closed"
data remove storage glm:interpreter evaluate.stack[-1]
data modify storage glm:interpreter evaluate.next set from storage glm:interpreter evaluate.parameters.result