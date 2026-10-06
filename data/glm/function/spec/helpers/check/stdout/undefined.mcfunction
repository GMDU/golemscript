$data modify storage observer:test/it describes set value "$(describes)"
  data modify storage observer:test/it expects set value {type: "undefined", value: 0b}

  $function glm:spec/helpers/run/init {program:$(receives)}
  data modify storage observer:test/it receives set from storage glm:spec/helpers run.out[-1]

function observer:api/perform