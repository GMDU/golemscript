execute unless data storage glm:utils sort.stack[-1].partitioned? run function glm:interpreter/utils/sort/partition/init
execute if data storage glm:utils sort.break run return -1
execute if data storage glm:utils sort.return run function glm:interpreter/utils/sort/child_closed

execute if data storage glm:utils sort.stack[-1].value[] run function glm:interpreter/utils/sort/next
execute unless data storage glm:utils sort.stack[-1].value[] unless data storage glm:utils sort.next run function glm:interpreter/utils/sort/close

execute if data storage glm:utils sort.next run function glm:interpreter/utils/sort/push
execute if data storage glm:utils sort.stack[] run function glm:interpreter/utils/sort/iterate