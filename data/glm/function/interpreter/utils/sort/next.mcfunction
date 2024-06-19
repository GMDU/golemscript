# If there is to be a comparison
execute if data storage glm:utils sort.stack[-1].value[0].target[1] run data modify storage glm:utils sort.next set from storage glm:utils sort.stack[-1].value[0]

# If there is not to be a comparison
execute unless data storage glm:utils sort.stack[-1].value[0].target[1] run function glm:interpreter/utils/sort/next_return

data remove storage glm:utils sort.stack[-1].value[0]