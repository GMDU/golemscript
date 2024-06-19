data modify storage glm:utils sort.callback set value "glm:interpreter/utils/sort/partition/compare"
data modify storage glm:utils sort.stack set value [{}]
data modify storage glm:utils sort.stack[-1].target set from storage glm:utils sort.target
data remove storage glm:utils sort.return

function glm:interpreter/utils/sort/iterate

data modify storage glm:utils sort.output set from storage glm:utils sort.return.output