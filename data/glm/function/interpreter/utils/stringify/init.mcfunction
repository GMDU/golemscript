data modify storage glm:interpreter utils.stringify.stack set value []
data modify storage glm:interpreter utils.stringify.result set value []
data modify storage glm:interpreter utils.stringify.stack append from storage glm:interpreter utils.stringify.target

function glm:interpreter/utils/stringify/main

data remove storage glm:interpreter utils.stringify.target