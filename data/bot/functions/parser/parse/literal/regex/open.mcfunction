execute if data storage glm:parser current{value:"/",escape:{escaped:false}} run function glm:parser/parse/literal/regex/close
execute if data storage glm:parser current{escape:{escaped:true}} unless data storage glm:parser current{value:"/"} run data modify storage glm:parser stack[-1].value append value "\\"

execute unless data storage glm:parser current{consumed:true} run data modify storage glm:parser stack[-1].value append from storage glm:parser current.value
data modify storage glm:parser current.consumed set value true