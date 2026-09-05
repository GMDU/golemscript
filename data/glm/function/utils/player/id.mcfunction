execute if score @s glm.utils.player.id matches 0.. run return -1

scoreboard players add $current glm.utils.player.id 1
scoreboard players operation @s glm.utils.player.id = $current glm.utils.player.id
