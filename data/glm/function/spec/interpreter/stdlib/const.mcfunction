function glm:spec/helpers/check/stderr {describes: "CONST", expects: "RuntimeError: Cannot reassign constant foo", receives: ["const foo = 5", "foo = 6"]}
