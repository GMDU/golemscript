function glm:spec/helpers/check/return {describes: "PREFIX?", expects: ["true"], receives: ["prefix?('hiya', 'hi')"]}
function glm:spec/helpers/check/return {describes: "PREFIX?", expects: ["false"], receives: ["prefix?('hello', 'hi')"]}
