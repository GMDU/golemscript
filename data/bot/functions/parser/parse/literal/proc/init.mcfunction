execute unless data storage glm:parser stack[-1].metadata.status run function glm:parser/parse/literal/proc/before
execute if data storage glm:parser stack[-1].metadata{status:"closed"} run function glm:parser/parse/literal/proc/close
execute if data storage glm:parser stack[-1].metadata{status:"open"} run function glm:parser/parse/literal/proc/open
execute if data storage glm:parser stack[-1].metadata{status:"parameters"} run function glm:parser/parse/literal/proc/parameters
execute if data storage glm:parser stack[-1].metadata{status:"value"} run function glm:parser/parse/literal/proc/value
