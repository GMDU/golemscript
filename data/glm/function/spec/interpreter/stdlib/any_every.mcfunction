function glm:spec/helpers/check/return {describes: "Every / Any 1", expects: ["false"], receives: ["any([], ->() true)"]}
function glm:spec/helpers/check/return {describes: "Every / Any 2", expects: ["true"], receives: ["every([], ->() false)"]}
function glm:spec/helpers/check/return {describes: "Every / Any 3", expects: ["true"], receives: ["any([1,2,3,4,5], -> (x) x % 2 == 0 && x >= 4)"]}
function glm:spec/helpers/check/return {describes: "Every / Any 4", expects: ["false"], receives: ["every([2,4,6,7], -> (x) x % 2 == 0)"]}
function glm:spec/helpers/check/stdout {describes: "Every / Any 5", expects: ["'6'"], receives: ["let last = 0", "every([1,3,6,5], -> (x) {last = x\nreturn x % 2 != 0})", "print(last)"]}
function glm:spec/helpers/check/stdout {describes: "Every / Any 6", expects: ["'true'"], receives: ["print(any({a:1,b:2,c:3,d:4}, -> (k,v) v % 2 == 0 && k != 'b'))"]}
function glm:spec/helpers/check/stdout {describes: "Every / Any 7", expects: ["'false'"], receives: ["print(every('Hello !',-> (c) c != ' '))"]}
