data modify storage glm:interpreter utils.stringify.result append value "["
execute if data storage glm:interpreter utils.stringify.current.value[] run function glm:interpreter/utils/stringify/array/iterate
data modify storage glm:interpreter utils.stringify.result append value "]"