data modify storage glm:parser current.consumed set value true
execute if data storage glm:parser current{value:"("} run data modify storage glm:parser stack[-1].metadata.status set value "open"
execute unless data storage glm:parser current{value:"("} unless data storage glm:parser current{value:" "} run data modify storage glm:parser raise set value '{"text":"[Literal - Function]: Expected (, received \\"","extra":[{"nbt":"current","storage":"glm:parser"},"\\""]}'