data modify storage glm:interpreter temp.target set value [n,a,m,e,s,p,a,c,e]
execute store result score $check glm.interpreter run data modify storage glm:interpreter temp.target set from storage glm:interpreter evaluate.result.value
execute if score $check glm.interpreter matches 0 run data modify storage glm:interpreter evaluate.parameters.result set value {type:"literal",variant:"string",value:[]}
execute if score $check glm.interpreter matches 0 run data modify storage glm:interpreter evaluate.parameters.result.value set from storage glm:interpreter evaluate.stack[-1].namespace
execute if score $check glm.interpreter matches 0 run return -1

data modify storage glm:interpreter temp.target set value [i,d]
execute store result score $check glm.interpreter run data modify storage glm:interpreter temp.target set from storage glm:interpreter evaluate.result.value
execute if score $check glm.interpreter matches 0 run data modify storage glm:interpreter evaluate.parameters.result set value {type:"literal",variant:"string",value:[]}
execute if score $check glm.interpreter matches 0 run data modify storage glm:interpreter evaluate.parameters.result.value set from storage glm:interpreter evaluate.stack[-1].id
execute if score $check glm.interpreter matches 0 run return -1
