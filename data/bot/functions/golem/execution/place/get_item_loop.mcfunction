execute store result score .current_slot bot.execution.variables run data get storage bot:variables Inventory[0].Slot
execute if score .current_slot bot.execution.variables = .slot_target bot.execution.variables run data modify storage bot:io Out set from storage bot:variables Inventory[0]

data remove storage bot:variables Inventory[0]

execute unless score .current_slot bot.execution.variables = .slot_target bot.execution.variables if data storage bot:variables Inventory[0] run function bot:golem/execution/place/get_item_loop