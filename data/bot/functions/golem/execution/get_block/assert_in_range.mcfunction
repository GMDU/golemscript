execute unless score .dx bot.execution.pos matches ..5 run data modify storage bot:program Error set value ["Getblock instruction must be less than or equal to 5 blocks away"]
execute unless score .dy bot.execution.pos matches ..5 run data modify storage bot:program Error set value ["Getblock instruction must be less than or equal to 5 blocks away"]
execute unless score .dz bot.execution.pos matches ..5 run data modify storage bot:program Error set value ["Getblock instruction must be less than or equal to 5 blocks away"]
execute unless score .dx bot.execution.pos matches -5.. run data modify storage bot:program Error set value ["Getblock instruction must be less than or equal to 5 blocks away"]
execute unless score .dy bot.execution.pos matches -5.. run data modify storage bot:program Error set value ["Getblock instruction must be less than or equal to 5 blocks away"]
execute unless score .dz bot.execution.pos matches -5.. run data modify storage bot:program Error set value ["Getblock instruction must be less than or equal to 5 blocks away"]