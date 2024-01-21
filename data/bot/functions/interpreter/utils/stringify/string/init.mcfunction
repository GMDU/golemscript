execute if data storage glm:interpreter utils.stringify.current.value[] unless data storage glm:interpreter utils.stringify.stack[-2] run data modify storage glm:interpreter utils.stringify.result append from storage glm:interpreter utils.stringify.current.value[]
execute if data storage glm:interpreter utils.stringify.current.value[] unless data storage glm:interpreter utils.stringify.stack[-2] run return -1

data modify storage glm:interpreter utils.stringify.result append value "'"
data modify storage glm:interpreter utils.stringify.result append from storage glm:interpreter utils.stringify.current.value[]
data modify storage glm:interpreter utils.stringify.result append value "'"