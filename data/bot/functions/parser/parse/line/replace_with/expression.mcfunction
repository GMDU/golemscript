data modify storage glm:parser temp.replaced set value true
data remove storage glm:parser stack[-1]
data modify storage glm:parser stack append value {type:"expression",metadata:{close:{type:"single",value:"^n"}}}