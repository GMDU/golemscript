# As all the players currently running programs, run the next cycle of the program
execute as @a[tag=glm.runtime.running] run function glm:runtime/run/execute

# If there are any players still running programs, call this function again next tick
execute if entity @a[tag=glm.runtime.running] run schedule function glm:runtime/run/init 1t replace
