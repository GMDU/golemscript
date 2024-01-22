$data modify storage moxlib:test/it describes set value "$(describes)"
  $function glm:spec/helpers/parse {program:$(expects)}
  data modify storage moxlib:test/it expects set from storage glm:api/parser init.output.value[0]

  $function glm:spec/helpers/run/init {program:$(receives)}
  data modify storage moxlib:test/it receives set from storage glm:api/interpreter/function execute.return

function moxlib:api/test/perform