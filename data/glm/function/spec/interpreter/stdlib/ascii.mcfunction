function glm:spec/helpers/check/stdout {describes: "ASCII 1", expects: ["'A 65'"], receives: ["print('A ' + str(ascii('A')))"]}
function glm:spec/helpers/check/stdout {describes: "ASCII 2", expects: ["'! 33'"], receives: ["print('! ' + str(ascii('!')))"]}
