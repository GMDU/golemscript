data modify storage glm:api/interpreter/function register.target set value [\
  {\
    id: "echo",\
    name: ["e", "c", "h", "o"],\
    function: "glm:spec/helpers/run/extensions/echo",\
    args: [{type: "any"}],\
  }\
]

function glm:api/interpreter/function/register