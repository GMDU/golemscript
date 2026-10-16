function glm:spec/helpers/check/return {describes: "LPAD 1", expects: ["'0071'"], receives: ["lpad('71', 4, '0')"]}
function glm:spec/helpers/check/return {describes: "LPAD 2", expects: ["'  foo'"], receives: ["lpad('foo', 5)"]}
function glm:spec/helpers/check/return {describes: "RPAD 1", expects: ["'hi?!?!?!?'"], receives: ["rpad('hi', 9, '?!')"]}