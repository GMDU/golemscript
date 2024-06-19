execute store result score $current glm.utils.sort run data get storage glm:utils sort.stack[-1].target[0].value
execute store result score $pivot glm.utils.sort run data get storage glm:utils sort.stack[-1].pivot.value

execute if score $current glm.utils.sort > $pivot glm.utils.sort run scoreboard players set $result glm.utils.sort 1
execute if score $current glm.utils.sort <= $pivot glm.utils.sort run scoreboard players set $result glm.utils.sort -1