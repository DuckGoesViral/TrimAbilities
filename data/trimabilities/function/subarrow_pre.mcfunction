scoreboard players reset @s subTag
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{added_power:1b}}}}] run item modify entity @s weapon.mainhand trimabilities:-1power
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{added_power:2b}}}}] run item modify entity @s weapon.mainhand trimabilities:-2power
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{added_power:3b}}}}] run item modify entity @s weapon.mainhand trimabilities:-3power
execute as @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{added_power:4b}}}}] run item modify entity @s weapon.mainhand trimabilities:-4power
item modify entity @s weapon.mainhand trimabilities:power_tag0

execute as @s[scores={wayfinder=4}] run item modify entity @s weapon.mainhand trimabilities:power_tag1
execute as @s[scores={wayfinder=4}] run return run item modify entity @s weapon.mainhand trimabilities:1power

execute as @s[scores={wild=4}] run item modify entity @s weapon.mainhand trimabilities:power_tag2
execute as @s[scores={wild=4}] run return run item modify entity @s weapon.mainhand trimabilities:2power

execute as @s[scores={eye=4}] run item modify entity @s weapon.mainhand trimabilities:power_tag4
execute as @s[scores={eye=4}] run return run item modify entity @s weapon.mainhand trimabilities:4power

execute as @s[scores={sentry=4}] run item modify entity @s weapon.mainhand trimabilities:power_tag4
execute as @s[scores={sentry=4}] run return run item modify entity @s weapon.mainhand trimabilities:4power

function trimabilities:subarrow