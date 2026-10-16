function glm:spec/helpers/check/return {describes: "Objects 1", expects: ["{a: 1, b: 2}"], receives: ["{a: 1} + {b: 2}"]}
function glm:spec/helpers/check/stdout {describes: "Objects 2", expects: ["1"], receives: ["echo({foo: {bar: {baz: 1}}}.foo['bar'].baz)"]}
