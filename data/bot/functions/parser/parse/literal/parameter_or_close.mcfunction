execute if data storage glm:parser current{value:"["} unless data storage glm:parser stack[-1].metadata{parameter:true} run function glm:parser/parse/literal/set_parameter
execute if data storage glm:parser current{value:"."} unless data storage glm:parser stack[-1].metadata{parameter:true} run function glm:parser/parse/literal/set_dot_parameter

execute unless data storage glm:parser current{consumed:true} run function glm:parser/parse/literal/check_close
