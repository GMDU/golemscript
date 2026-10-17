function glm:spec/helpers/check/return {describes: "REPLACE 1", expects: ["'He;;o, wor;d!'"], receives: ["replace('Hello, world!', 'l', ';')"]}
function glm:spec/helpers/check/return {describes: "REPLACE 2", expects: ["'hehehahaha'"], receives: ["replace('hahahahaha', 'a', 'e', 2)"]}
function glm:spec/helpers/check/return {describes: "REPLACE 3", expects: ["'hi'"], receives: ["replace('hi', 'h', '_', 0)"]}
function glm:spec/helpers/check/return {describes: "REPLACE 4", expects: ["'fee'"], receives: ["replace('foo', 'o', 'e', -1)"]}
