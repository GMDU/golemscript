data modify storage bot:variables stack append from storage bot:variables arrayEvaluationStack[-1][0].key
function bot:golem/execution/print/_evaluate
data remove storage bot:io Out[-1][-1]
data remove storage bot:io Out[-1][0]
data modify storage bot:io Out append value [": "]
data modify storage bot:variables stack append from storage bot:variables arrayEvaluationStack[-1][0].value
function bot:golem/execution/print/_evaluate
data remove storage bot:variables arrayEvaluationStack[-1][0]
execute if data storage bot:variables arrayEvaluationStack[-1][0] run data modify storage bot:io Out append value [", "]

execute if data storage bot:variables arrayEvaluationStack[-1][0] run function bot:golem/execution/print/evaluate/loops/object
