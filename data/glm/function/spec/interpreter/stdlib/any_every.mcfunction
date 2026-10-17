function glm:spec/helpers/check/return {describes: "Any / Every 1", expects: ["false"], receives: ["any([], ->() true)"]}
function glm:spec/helpers/check/return {describes: "Any / Every 2", expects: ["true"], receives: ["every([], ->() false)"]}
function glm:spec/helpers/check/return {describes: "Any / Every 3", expects: ["true"], receives: ["any([1,2,3,4,5], -> (x) x % 2 == 0 && x >= 4)"]}
function glm:spec/helpers/check/return {describes: "Any / Every 4", expects: ["false"], receives: ["every([2,4,6,7], -> (x) x % 2 == 0)"]}
function glm:spec/helpers/check/stdout {describes: "Any / Every 5", expects: ["6"], receives: ["let last = 0", "every([1,3,6,5], -> (x) {last = x\nreturn x % 2 != 0})", "echo(last)"]}
function glm:spec/helpers/check/return {describes: "Any / Every 6", expects: ["true"], receives: ["any({a:1,b:2,c:3,d:4}, -> (k,v) v % 2 == 0 && k != 'b')"]}
function glm:spec/helpers/check/return {describes: "Any / Every 7", expects: ["false"], receives: ["every('Hello !',-> (c) c != ' ')"]}
