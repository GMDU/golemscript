function glm:spec/helpers/check/return {describes: "DELETE / SET 1", expects: ["'Hells nah'"], receives: ["set('Hello nah', 4, 's')"]}
function glm:spec/helpers/check/return {describes: "DELETE / SET 2", expects: ["[7, 2, 3, 4]"], receives: ["set([1,2,3,4], 0, 7)"]}
function glm:spec/helpers/check/return {describes: "DELETE / SET 3", expects: ["{a:0,b:2,c:3}"], receives: ["set({a:1,b:2,c:3}, 'a', 0)"]}
function glm:spec/helpers/check/return {describes: "DELETE / SET 5", expects: ["'Hell nah'"], receives: ["delete('Hello nah', 4)"]}
function glm:spec/helpers/check/return {describes: "DELETE / SET 4", expects: ["[1, 2, 4]"], receives: ["delete([1,2,3,4], 2)"]}
function glm:spec/helpers/check/return {describes: "DELETE / SET 6", expects: ["{a:1,c:3}"], receives: ["delete({a:1,b:2,c:3}, 'b')"]}
