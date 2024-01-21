data modify storage glm:parser temp.check set from storage glm:parser stack[-1].metadata.close.value
execute store success storage glm:parser temp.success byte 1 run data modify storage glm:parser temp.check set from storage glm:parser current.value

execute if data storage glm:parser temp{success:false} run data modify storage glm:parser stack[-1].metadata.close.closed set value true