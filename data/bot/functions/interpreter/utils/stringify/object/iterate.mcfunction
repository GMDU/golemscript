data modify storage glm:interpreter utils.stringify.result append from storage glm:interpreter utils.stringify.stack[-1].value[0].key[]
data modify storage glm:interpreter utils.stringify.result append value ":"
data modify storage glm:interpreter utils.stringify.result append value " "


data modify storage glm:interpreter utils.stringify.stack append from storage glm:interpreter utils.stringify.stack[-1].value[0].value
function glm:interpreter/utils/stringify/main
data remove storage glm:interpreter utils.stringify.stack[-1].value[0]

execute unless data storage glm:interpreter utils.stringify.stack[-1].value[] run return -1

data modify storage glm:interpreter utils.stringify.result append value ","
data modify storage glm:interpreter utils.stringify.result append value " "
function glm:interpreter/utils/stringify/object/iterate