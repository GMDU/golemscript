execute store result score .slot_target bot.execution.variables run data get storage bot:io In

data modify storage bot:variables Inventory set from entity @s Items

execute if data storage bot:variables Inventory[0] run function bot:golem/execution/place/get_item_loop