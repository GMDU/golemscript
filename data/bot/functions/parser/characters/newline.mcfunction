data modify storage glm:parser temp.check set from storage moxlib:api/string/newline output
execute store success storage glm:parser temp.success byte 1 run data modify storage glm:parser temp.check set from storage glm:parser current.value

execute if data storage glm:parser temp{success:false} run data modify storage glm:parser current.value set value "^n"

execute if data storage glm:parser current{value:"^n"} run data modify storage glm:parser current merge value {flags:["whitespace","terminator","meta"],comment:false}