data modify storage moxlib:api/string/from_array target set from storage glm:interpreter evaluate.stack[-1].args[0].value
function moxlib:api/string/from_array
data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "integer", value: 0}
scoreboard players reset $value bot.interpreter
function glm:interpreter/evaluate/function/builtin/int/string_macro with storage moxlib:api/string/from_array
execute store result storage glm:api/interpreter/function execute.return.value int 1 run scoreboard players get $value bot.interpreter
