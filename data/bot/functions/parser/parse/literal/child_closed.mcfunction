data modify storage glm:parser parent set from storage glm:parser stack[-1]
execute unless data storage glm:parser parent.metadata{status:"closed"} run function glm:parser/parse/literal/child_closed/value
execute if data storage glm:parser parent.metadata{status:"closed"} run function glm:parser/parse/literal/child_closed/parameter