function glm:spec/helpers/check/return {describes: "CONTAINS / INDEX 1", expects: ["0"], receives: ["index([1, 2, 3], 1)"]}
function glm:spec/helpers/check/return {describes: "CONTAINS / INDEX 2", expects: ["1"], receives: ["index([4, 5, 6], 5)"]}
function glm:spec/helpers/check/stdout {describes: "CONTAINS / INDEX 3", expects: ["'-1'"], receives: ["print(index([1, 2, 4], 3))"]}
function glm:spec/helpers/check/return {describes: "CONTAINS / INDEX 4", expects: ["true"], receives: ["contains?(['hi', 'there'], 'hi')"]}
function glm:spec/helpers/check/return {describes: "CONTAINS / INDEX 5", expects: ["false"], receives: ["contains?([true,undefined,/hi/], false)"]}
function glm:spec/helpers/check/return {describes: "CONTAINS / INDEX 6", expects: ["2"], receives: ["index('hello','ll')"]}
function glm:spec/helpers/check/return {describes: "CONTAINS / INDEX 7", expects: ["false"], receives: ["contains?('Hi, whats up?', 'q')"]}
