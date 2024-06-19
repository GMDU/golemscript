execute unless data storage glm:parser parent.metadata.status run function glm:parser/parse/instruction/func/before
execute if data storage glm:parser parent.metadata{status:"brackets"} run function glm:parser/parse/instruction/func/brackets
execute if data storage glm:parser parent.metadata{status:"parameters"} run function glm:parser/parse/instruction/func/set_parameter
execute if data storage glm:parser parent.metadata{status:"value"} run function glm:parser/parse/instruction/func/set_block
execute if data storage glm:parser parent.metadata{status:"closed"} run data modify storage glm:parser close set value true