function glm:spec/helpers/check/return {describes: "SQUEEZE 1", expects: ["'Helo, World!'"], receives: ["squeeze('Hello, World!!!')"]}
function glm:spec/helpers/check/return {describes: "SQUEEZE 2", expects: ["'abbcd'"], receives: ["squeeze('aabbccdd', 'acd')"]}
