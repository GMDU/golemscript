data modify storage glm:interpreter utils.stringify.current set from storage glm:interpreter utils.stringify.stack[-1]
data remove storage glm:interpreter temp.text

execute if data storage glm:interpreter utils.stringify.current{type:"literal",variant:"array"} run function glm:interpreter/utils/stringify/array/init
execute if data storage glm:interpreter utils.stringify.current{type:"literal",variant:"integer"} run function glm:interpreter/utils/stringify/integer/init with storage glm:interpreter utils.stringify.current
execute if data storage glm:interpreter utils.stringify.current{type:"literal",variant:"boolean"} run function glm:interpreter/utils/stringify/boolean/init
execute if data storage glm:interpreter utils.stringify.current{type:"literal",variant:"object"} run function glm:interpreter/utils/stringify/object/init
execute if data storage glm:interpreter utils.stringify.current{type:"literal",variant:"regex"} run function glm:interpreter/utils/stringify/regex/init
execute if data storage glm:interpreter utils.stringify.current{type:"literal",variant:"resource"} run function glm:interpreter/utils/stringify/resource/init
execute if data storage glm:interpreter utils.stringify.current{type:"literal",variant:"string"} run function glm:interpreter/utils/stringify/string/init
execute if data storage glm:interpreter utils.stringify.current{type:"literal",variant:"proc"} run function glm:interpreter/utils/stringify/proc/init
execute if data storage glm:interpreter utils.stringify.current{type:"undefined"} run function glm:interpreter/utils/stringify/undefined/init

data remove storage glm:interpreter utils.stringify.stack[-1]
data remove storage glm:interpreter utils.stringify.current