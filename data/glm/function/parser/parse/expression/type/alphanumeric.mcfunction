function glm:parser/parse/literal/alphanumeric/filters/first

execute if data storage glm:utils/string/filter {output:false} run data modify storage glm:parser expression.type set value {type:"literal",variant:"alphanumeric"}