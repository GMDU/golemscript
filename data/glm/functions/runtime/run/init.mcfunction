data modify storage glm:runtime temp.db set from storage glm:runtime db
data modify storage glm:runtime db set value []

execute as @a[tag=glm.runtime.running] run function glm:runtime/run/execute

execute if entity @a[tag=glm.runtime.running] run schedule function glm:runtime/run/init 1t replace
