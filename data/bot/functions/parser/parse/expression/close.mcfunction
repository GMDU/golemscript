data modify storage glm:parser close set value true
data modify storage glm:parser parent set from storage glm:parser stack[-1]
execute unless data storage glm:parser parent.value[1] if data storage glm:parser parent.value[0] run function glm:parser/parse/expression/replace/single
execute unless data storage glm:parser parent.value[0] run function glm:parser/parse/expression/replace/empty