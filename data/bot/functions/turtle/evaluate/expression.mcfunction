data modify storage bot:variables RecursiveEvaluation.evaluateStack append from storage bot:variables RecursiveEvaluation.evaluateStack[-1].value
function bot:turtle/_evaluate
data modify storage bot:variables RecursiveEvaluation.expressionStack append value {}
data modify storage bot:variables RecursiveEvaluation.expressionStack[-1].expressionValue set from storage bot:io Out

execute if data storage bot:variables RecursiveEvaluation.evaluateStack[-1].expression run function bot:turtle/evaluate/expression/sub_expression

execute unless data storage bot:variables RecursiveEvaluation.evaluateStack[-1].expression run data modify storage bot:io Out set from storage bot:io Out[0]
data remove storage bot:variables RecursiveEvaluation.expressionStack[-1]
