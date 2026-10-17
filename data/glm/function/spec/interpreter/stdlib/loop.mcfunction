function glm:spec/helpers/check/stdout {describes: "Loop", expects: ["'hahahahaha'"], receives: ["let str = ''\nloop 5 {str += 'ha'}\necho(str)"]}
