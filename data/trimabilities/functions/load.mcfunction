
tellraw @a {"text": "Reload Succesful!","color": "#0000FF"}

function trimabilities:abilities5t
function trimabilities:scoreboardlevels
function trimabilities:categorytags
function trimabilities:minecraftxp
function trimabilities:categoryxp
function trimabilities:minecraftlevels
function trimabilities:categorylevels
function trimabilities:necroteam

scoreboard objectives add swamBlocks minecraft.custom:minecraft.swim_one_cm

scoreboard objectives add isDead deathCount
scoreboard players set @a isDead 0

function trimabilities:playerlevel
scoreboard objectives add playerLevel trigger

scoreboard objectives add ruinsPlaced dummy
execute unless score TrailRuins ruinsPlaced matches 0.. run scoreboard players set TrailRuins ruinsPlaced 0
function trimabilities:starttrailruins

function trimabilities:spawnhelp

scoreboard objectives add trimHelp trigger
scoreboard objectives add helpTimer dummy
function trimabilities:triggerhelp

scoreboard objectives add keepTrim dummy

scoreboard objectives add minecraftLevel dummy

scoreboard objectives add killedWarden minecraft.killed:minecraft.warden
scoreboard objectives add killedDragon minecraft.killed:minecraft.ender_dragon
scoreboard objectives add killedWither minecraft.killed:minecraft.wither
scoreboard objectives add killedElder minecraft.killed:minecraft.elder_guardian

scoreboard objectives add minedNugget minecraft.mined:minecraft.nether_gold_ore
scoreboard objectives add nuggetAmount dummy
scoreboard objectives add minedQuartz minecraft.mined:minecraft.nether_quartz_ore
scoreboard objectives add quartzAmount dummy
scoreboard objectives add minedCoal minecraft.mined:minecraft.coal_ore
scoreboard objectives add minedCoalD minecraft.mined:minecraft.deepslate_coal_ore
scoreboard objectives add minedCopper minecraft.mined:minecraft.copper_ore
scoreboard objectives add minedCopperD minecraft.mined:minecraft.deepslate_copper_ore
scoreboard objectives add minedRedstone minecraft.mined:minecraft.redstone_ore
scoreboard objectives add minedRedstoneD minecraft.mined:minecraft.deepslate_redstone_ore
scoreboard objectives add minedLapis minecraft.mined:minecraft.lapis_ore
scoreboard objectives add minedLapisD minecraft.mined:minecraft.deepslate_lapis_ore
scoreboard objectives add minedIron minecraft.mined:minecraft.iron_ore
scoreboard objectives add minedIronD minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add minedGold minecraft.mined:minecraft.gold_ore
scoreboard objectives add minedGoldD minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add minedEmerald minecraft.mined:minecraft.emerald_ore
scoreboard objectives add minedEmeraldD minecraft.mined:minecraft.deepslate_emerald_ore
scoreboard objectives add minedDiamond minecraft.mined:minecraft.diamond_ore
scoreboard objectives add minedDiamondD minecraft.mined:minecraft.deepslate_diamond_ore

scoreboard objectives add farmedPotato minecraft.mined:minecraft.potatoes



scoreboard objectives add warriorLevel dummy
scoreboard objectives add tankLevel dummy
scoreboard objectives add archerLevel dummy
scoreboard objectives add necromancerLevel dummy


scoreboard objectives add xpDisplay dummy

scoreboard objectives add mobKills minecraft.custom:minecraft.mob_kills

scoreboard objectives add damageTaken minecraft.custom:minecraft.damage_taken
scoreboard objectives add damageTanked minecraft.custom:minecraft.damage_resisted
scoreboard objectives add damageBlocked minecraft.custom:minecraft.damage_blocked_by_shield


scoreboard objectives add BowAttack minecraft.custom:minecraft.mob_kills

scoreboard objectives add drankPotion minecraft.used:minecraft.potion



scoreboard objectives add progressDune dummy
scoreboard objectives add progressSnout dummy
scoreboard objectives add progressSilence dummy

scoreboard objectives add progressWard dummy
scoreboard objectives add progressSpire dummy

scoreboard objectives add progressWild dummy
scoreboard objectives add progressEye dummy
scoreboard objectives add progressSentry dummy

scoreboard objectives add progressRib dummy
scoreboard objectives add progressVex dummy

scoreboard objectives add progressTide dummy

#Tag to Scoreboard
scoreboard objectives add mcLvl dummy
scoreboard objectives add wLvl dummy
scoreboard objectives add tLvl dummy
scoreboard objectives add aLvl dummy
scoreboard objectives add nLvl dummy


#abilities
scoreboard objectives add shoot minecraft.used:minecraft.bow
scoreboard objectives add shoot2 minecraft.used:minecraft.crossbow


scoreboard objectives add sneakTrigger dummy
scoreboard objectives add sneakTimer dummy

scoreboard objectives add spyglass dummy
scoreboard objectives add snipeCharge dummy
scoreboard objectives add targeting dummy

scoreboard objectives add sentryBoom dummy
scoreboard players set @a sentryBoom 0


scoreboard objectives add AcooldownMax dummy
scoreboard players set @a AcooldownMax 0
scoreboard objectives add AcooldownCurrent dummy

scoreboard objectives add AcooldownTimer dummy
scoreboard objectives add AcooldownTimer2 dummy

scoreboard players set @a AcooldownTimer 0
scoreboard players set @a AcooldownTimer2 0


scoreboard objectives add TcooldownMax dummy
scoreboard players set @a TcooldownMax 300
scoreboard objectives add TcooldownCurrent dummy

scoreboard objectives add TcooldownTimer dummy
scoreboard objectives add TcooldownTimer2 dummy

scoreboard players set @a TcooldownTimer 0
scoreboard players set @a TcooldownTimer2 0


scoreboard objectives add syphonSecond dummy

scoreboard objectives add sonicAttack dummy
scoreboard objectives add sonicTimer dummy


scoreboard objectives add WcooldownMax dummy
scoreboard players set @a WcooldownMax 60
scoreboard objectives add WcooldownCurrent dummy

scoreboard objectives add WcooldownTimer dummy
scoreboard objectives add WcooldownTimer2 dummy

scoreboard players set @a WcooldownTimer 0
scoreboard players set @a WcooldownTimer2 0




scoreboard players set @a sneakTimer 0

scoreboard players set @a NRcooldownTimer 0
scoreboard players set @a NRcooldownTimer2 0
scoreboard players set @a zombieSuccess 0

scoreboard players set @a NBcooldownTimer 0
scoreboard players set @a NBcooldownTimer2 0
scoreboard players set @a witherSuccess 0

scoreboard players set @a NVcooldownTimer 0
scoreboard players set @a NVcooldownTimer2 0
scoreboard players set @a vexSuccess 0


scoreboard objectives add zombieNameRandom dummy

scoreboard objectives add NRcooldownMax dummy
scoreboard players set @a NRcooldownMax 60
scoreboard objectives add NRcooldownCurrent dummy

scoreboard objectives add zombieSuccess dummy

scoreboard objectives add NRcooldownTimer dummy
scoreboard objectives add NRcooldownTimer2 dummy




scoreboard objectives add witherNameRandom dummy

scoreboard objectives add NBcooldownMax dummy
scoreboard players set @a NBcooldownMax 60
scoreboard objectives add NBcooldownCurrent dummy

scoreboard objectives add witherSuccess dummy

scoreboard objectives add NBcooldownTimer dummy
scoreboard objectives add NBcooldownTimer2 dummy




scoreboard objectives add vexNameRandom dummy

scoreboard objectives add NVcooldownMax dummy
scoreboard players set @a NVcooldownMax 60
scoreboard objectives add NVcooldownCurrent dummy

scoreboard objectives add vexSuccess dummy

scoreboard objectives add NVcooldownTimer dummy
scoreboard objectives add NVcooldownTimer2 dummy
