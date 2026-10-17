function glm:spec/helpers/check/return {describes: "FILTER 1", expects: ["[2, 4, 6]"], receives: ["filter([1,2,3,4,5,6], -> (x) x % 2 == 0)"]}
function glm:spec/helpers/check/return {describes: "FILTER 2", expects: ["'aaeo'"], receives: ["filter('ahaheho',-> (c) c != 'h')"]}
function glm:spec/helpers/check/return {describes: "FILTER 3", expects: ["{d: 4, f: 6}"], receives: ["filter({a:1,b:2,c:3,d:4,e:5,f:6},-> (k,v) k != 'b' && v % 2 == 0)"]}
