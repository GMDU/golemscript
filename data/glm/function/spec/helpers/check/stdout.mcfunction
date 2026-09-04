$data modify storage observer:test/it describes set value "$(describes)"
  $function glm:spec/helpers/parse {program:$(expects)}
  data modify storage observer:test/it expects set from storage glm:api/parser init.output.value[0]

  $function glm:spec/helpers/run/init {program:$(receives)}
  data modify storage observer:test/it receives set from storage glm:spec/helpers run.out[-1]

function observer:api/perform