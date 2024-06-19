data modify storage glm:parser temp.replaced set value true
data modify storage glm:parser temp.line set from storage glm:parser stack[-1]
data remove storage glm:parser stack[-1]

execute if data storage glm:parser temp.line.metadata.close{type:"end"} run data modify storage glm:parser stack append value {type:"expression",metadata:{close:{type:"single",value:"^n"}}}

execute unless data storage glm:parser temp.line.metadata.close{type:"end"} run data modify storage glm:parser stack append value {type:"expression",metadata:{close:{type:"alternate",value:["^n","}"]}}}