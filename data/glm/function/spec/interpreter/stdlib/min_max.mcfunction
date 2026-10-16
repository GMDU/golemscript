function glm:spec/helpers/check/return {describes: "Min/Max 1", expects: ["1"], receives: ["min(1,10)"]}
function glm:spec/helpers/check/return {describes: "Min/Max 2", expects: ["10"], receives: ["max(1,10)"]}
function glm:spec/helpers/check/return {describes: "Min/Max 3", expects: ["1"], receives: ["min(10,1)"]}
function glm:spec/helpers/check/return {describes: "Min/Max 4", expects: ["10"], receives: ["max(10,1)"]}
function glm:spec/helpers/check/stdout {describes: "Min/Max 5", expects: ["'-10'"], receives: ["print(min(-10,-9))"]}
function glm:spec/helpers/check/return {describes: "Min/Max 6", expects: ["1"], receives: ["max(1,-2)"]}
