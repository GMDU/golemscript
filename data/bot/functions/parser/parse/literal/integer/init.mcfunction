execute unless data storage glm:parser stack[-1].metadata.status run function glm:parser/parse/literal/integer/before
execute if data storage glm:parser stack[-1].metadata{status:"open"} run function glm:parser/parse/literal/integer/open
execute if data storage glm:parser stack[-1].metadata{status:"convert"} run function glm:parser/parse/literal/integer/convert