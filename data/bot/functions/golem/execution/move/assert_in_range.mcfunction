execute unless score .dx bot.execution.pos matches ..1 run data modify storage bot:program Error set value ["Move instruction must be less than or equal to 1 block away"]
execute unless score .dy bot.execution.pos matches ..1 run data modify storage bot:program Error set value ["Move instruction must be less than or equal to 1 block away"]
execute unless score .dz bot.execution.pos matches ..1 run data modify storage bot:program Error set value ["Move instruction must be less than or equal to 1 block away"]
execute unless score .dx bot.execution.pos matches -1.. run data modify storage bot:program Error set value ["Move instruction must be less than or equal to 1 block away"]
execute unless score .dy bot.execution.pos matches -1.. run data modify storage bot:program Error set value ["Move instruction must be less than or equal to 1 block away"]
execute unless score .dz bot.execution.pos matches -1.. run data modify storage bot:program Error set value ["Move instruction must be less than or equal to 1 block away"]