# Give the player an ID, so we can keep track of them in the db
execute unless score @s moxlib.api.player.id matches 1.. run function moxlib:api/player/run

# Get pages of the book
data modify storage glm:runtime temp.pages set value []
data modify storage glm:runtime temp.pages append from entity @s SelectedItem.components.minecraft:writable_book_content.pages[].raw

# Get the player data from their id
# The data gets stored in temp.data
execute store result storage glm:runtime temp.id int 1 run scoreboard players get @s moxlib.api.player.id
function glm:runtime/get_data with storage glm:runtime temp

# Check whether the input from the book is different from the previous input
# If the book is empty (or not a book) or the same, we don't need to re-parse the input
execute store result score $check glm.runtime run data modify storage glm:runtime temp.data.input set from storage glm:runtime temp.pages

# If the input has changed, run some logic and parse it
execute unless score $check glm.runtime matches 0 run function glm:runtime/parse
# If the parser returned an error, we don't want to run the program
execute unless score $check glm.runtime matches 0 run execute if score $status glm.runtime matches 400.. run return -1

# Remove state (which holds the program state), to prevent carry over of variables and functions from the previous run
data remove storage glm:runtime temp.data.state
# Add the AST to the stack, to create the initial program state
data modify storage glm:runtime temp.data.state.stack append from storage glm:runtime temp.data.parsed
# Tag the player so we know who is currently running a program
tag @s add glm.runtime.running

# Set the data back into the db
function glm:runtime/set_data with storage glm:runtime temp

# Schedule the function to run the program, in case it's not currently running
schedule function glm:runtime/run/init 1t replace
