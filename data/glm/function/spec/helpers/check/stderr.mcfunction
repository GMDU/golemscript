$data modify storage observer:test/it describes set value "$(describes)"
  data modify storage observer:test/it expects set value true

  $function glm:spec/helpers/run/init {program:$(receives)}
  execute store success storage observer:test/it receives byte 1 run data get storage glm:spec/helpers run.error[-1]

function observer:api/perform