data modify storage glm:utils sort.stack[-1].output append from storage glm:utils sort.stack[-1].return[{side:"left"}].output[]
data modify storage glm:utils sort.stack[-1].output append from storage glm:utils sort.stack[-1].pivot
data modify storage glm:utils sort.stack[-1].output append from storage glm:utils sort.stack[-1].return[{side:"right"}].output[]

data modify storage glm:utils sort.return set from storage glm:utils sort.stack[-1]

data remove storage glm:utils sort.stack[-1]