execute store result score .index glm.interpreter run data get storage glm:interpreter evaluate.result.value
data modify storage glm:interpreter evaluate.parameters.result set value {type:"literal",variant:string,value:[]}

function glm:interpreter/evaluate/literal/string/parameters/iterate

data modify storage glm:interpreter evaluate.parameters.result.parameters set from storage glm:interpreter evaluate.stack[-1].parameters
data remove storage glm:interpreter evaluate.stack[-1]
data modify storage glm:interpreter evaluate.next set from storage glm:interpreter evaluate.parameters.result