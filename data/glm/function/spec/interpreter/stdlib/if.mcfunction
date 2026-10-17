function glm:spec/helpers/check/stdout {describes: "If 1", expects: ["true"], receives: ["if true { echo(true) }"]}
function glm:spec/helpers/check/stdout/empty {describes: "If 2", receives: ["if false { echo(true) }"]}
function glm:spec/helpers/check/stdout {describes: "If 3", expects: ["true"], receives: ["if !false { echo(true) }"]}
