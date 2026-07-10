# One-time advancement XP checks, every 20 ticks (moved out of minecraftxp,
# where these 38 lines ran every 3 ticks). Each fires minecraftxpa once per
# player per advancement; the tag prevents re-grants.

#Bosses
execute if entity @a[advancements={minecraft:end/kill_dragon=true},tag=!killedDragon] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:nether/summon_wither=true},tag=!summonWither] run function trimabilities:minecraftxpa

#Dimensions
execute if entity @a[advancements={minecraft:nether/root=true},tag=!enteredNether] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:end/root=true},tag=!enteredEnd] run function trimabilities:minecraftxpa

#Minecraft
execute if entity @a[advancements={minecraft:story/upgrade_tools=true},tag=!upgradedPick] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:story/smelt_iron=true},tag=!smeltedIron] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:story/mine_diamond=true},tag=!obtainedDiamond] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:story/shiny_gear=true},tag=!obtainedDiamondArmor] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:story/enchant_item=true},tag=!enchantedItem] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:story/follow_ender_eye=true},tag=!followedEye] run function trimabilities:minecraftxpa

#Nether
execute if entity @a[advancements={minecraft:nether/return_to_sender=true},tag=!returnedFireball] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:nether/find_bastion=true},tag=!foundBastion] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:nether/find_fortress=true},tag=!foundFortress] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:nether/obtain_ancient_debris=true},tag=!obtainedAncientDebris] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:nether/netherite_armor=true},tag=!obtainedNetheriteArmor] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:nether/create_beacon=true},tag=!madeBeacon] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:nether/create_full_beacon=true},tag=!maxedBeacon] run function trimabilities:minecraftxpa

#End
execute if entity @a[advancements={minecraft:end/dragon_egg=true},tag=!obtainedDragonEgg] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:end/respawn_dragon=true},tag=!respawnedDragon] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:end/find_end_city=true},tag=!enteredEndCity] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:end/elytra=true},tag=!obtainedElytra] run function trimabilities:minecraftxpa

#Adventure
execute if entity @a[advancements={minecraft:adventure/kill_a_mob=true},tag=!killedMob] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:adventure/trade=true},tag=!tradedDeal] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:adventure/salvage_sherd=true},tag=!salvagedSherd] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:adventure/hero_of_the_village=true},tag=!defendedVillage] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:adventure/kill_all_mobs=true},tag=!killedMobs] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:adventure/craft_decorated_pot_using_only_sherds=true},tag=!decoratedPot] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:adventure/adventuring_time=true},tag=!visitedBiomes] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:adventure/trim_with_any_armor_pattern=true},tag=!appliedTrim] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:adventure/trim_with_all_exclusive_armor_patterns=true},tag=!appliedTrims] run function trimabilities:minecraftxpa

#Husbandry
execute if entity @a[advancements={minecraft:husbandry/obtain_sniffer_egg=true},tag=!obtainedSniffer] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:husbandry/bred_all_animals=true},tag=!bredAnimals] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:husbandry/complete_catalogue=true},tag=!tamedCats] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:husbandry/feed_snifflet=true},tag=!fedSniffer] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:husbandry/balanced_diet=true},tag=!eatFoods] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:husbandry/obtain_netherite_hoe=true},tag=!obtainedNetheriteHoe] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:husbandry/froglights=true},tag=!obtainedFroglights] run function trimabilities:minecraftxpa
execute if entity @a[advancements={minecraft:husbandry/plant_any_sniffer_seed=true},tag=!plantedSniffer] run function trimabilities:minecraftxpa

schedule function trimabilities:advancementxp 20t
