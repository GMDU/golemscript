data modify storage bot:interpreter temp.function.signature set from storage moxlib:api/data/get output
execute if data storage bot:interpreter temp.function.signature{id:"print"} run function bot:interpreter/evaluate/function/builtin/print
execute if data storage bot:interpreter temp.function.signature{id:"random"} run function bot:interpreter/evaluate/function/builtin/random
execute if data storage bot:interpreter temp.function.signature{id:"move"} run function bot:interpreter/evaluate/function/builtin/move/init