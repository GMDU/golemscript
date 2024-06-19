data remove storage glm:parser parsed.metadata

execute if data storage glm:parser stack[-1].metadata{status:"value"} run function glm:parser/parse/literal/object/child_closed/value
execute if data storage glm:parser stack[-1].metadata{status:"key"} run function glm:parser/parse/literal/object/child_closed/key