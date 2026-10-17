function glm:spec/helpers/check/return {describes: "REDUCE 1", expects: ["21"], receives: ["reduce([1,2,3,4,5,6], 0, -> (a, b) a + b)"]}
function glm:spec/helpers/check/return {describes: "REDUCE 2", expects: ["'abcdef'"], receives: ["reduce({a:1,b:2,c:3,d:4,e:5,f:6},'',-> (k, v, a) a + k)"]}
function glm:spec/helpers/check/return {describes: "REDUCE 3", expects: ["'olleH'"], receives: ["reduce('Hello','',-> (a, b) a + b)"]}
