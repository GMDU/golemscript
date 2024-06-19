execute unless data storage glm:utils sort.stack[-1].pivot run function glm:interpreter/utils/sort/partition/pivot

execute store result score $pivot glm.utils.sort run data get storage glm:utils sort.stack[-1].pivot

execute if data storage glm:utils sort.stack[-1].target[1] run function glm:interpreter/utils/sort/partition/iterate with storage glm:utils sort
execute unless data storage glm:utils sort.stack[-1].target[1] run function glm:interpreter/utils/sort/partition/iterate with storage glm:utils sort

execute unless data storage glm:utils sort.break run data modify storage glm:utils sort.stack[-1].partitioned? set value true