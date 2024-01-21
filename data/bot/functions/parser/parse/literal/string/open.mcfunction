execute if data storage glm:parser stack[-1].metadata{type:"single"} if data storage glm:parser current{value:"'",escape:{escaped:false}} run function glm:parser/parse/literal/string/close
execute if data storage glm:parser stack[-1].metadata{type:"double"} if data storage glm:parser current{value:"\"",escape:{escaped:false}} run function glm:parser/parse/literal/string/close

data modify storage glm:parser next.flags append value "consumes"
execute unless data storage glm:parser current{consumed:true} run data modify storage glm:parser stack[-1].value append from storage glm:parser current.value
data modify storage glm:parser current.consumed set value true