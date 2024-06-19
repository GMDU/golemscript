data modify storage glm:parser stack[-1].metadata.opened set value true
data remove storage glm:parser temp

function glm:parser/parse/literal/alphanumeric/filters/first

execute if data storage moxlib:api/string/filter {output:true} run function glm:parser/parse/line/replace_with/expression
execute if data storage moxlib:api/string/filter {output:false} run function glm:parser/parse/line/instruction/registry