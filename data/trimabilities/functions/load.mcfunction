
tellraw @a {"text": "Reload Succesful!","color": "#0000FF"}

function trimabilities:abilities5t
function trimabilities:scoreboardlevels
function trimabilities:categorytags
function trimabilities:minecraftxp
function trimabilities:categoryxp
function trimabilities:minecraftlevels
function trimabilities:categorylevels
function trimabilities:necroteam

scoreboard objectives add trimShrine dummy
execute unless score started trimShrine matches 1 run function trimabilities:shrine/find-y

scoreboard objectives add buttonRecovery dummy
scoreboard objectives add buttonRemove dummy


scoreboard objectives add recoveryToggle dummy
scoreboard objectives add Trim_Recovery_Toggle trigger
execute unless score server recoveryToggle matches 0.. run scoreboard players set server recoveryToggle 1

scoreboard objectives add recoveryDeath deathCount

scoreboard objectives add recoveryTotal dummy

scoreboard objectives add recoveryShaper dummy
scoreboard objectives add recoveryDune dummy
scoreboard objectives add recoverySnout dummy
scoreboard objectives add recoverySilence dummy
scoreboard objectives add recoveryHost dummy
scoreboard objectives add recoveryVital dummy
scoreboard objectives add recoveryWard dummy
scoreboard objectives add recoverySpire dummy
scoreboard objectives add recoveryWayfinder dummy
scoreboard objectives add recoveryWild dummy
scoreboard objectives add recoveryEye dummy
scoreboard objectives add recoverySentry dummy
scoreboard objectives add recoveryRaiser dummy
scoreboard objectives add recoveryStray dummy
scoreboard objectives add recoveryEcho dummy
scoreboard objectives add recoveryStorm dummy
scoreboard objectives add recoveryCoast dummy
scoreboard objectives add recoveryTide dummy
scoreboard objectives add recoveryRavine dummy
scoreboard objectives add recoveryRib dummy
scoreboard objectives add recoveryVex dummy




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
scoreboard objectives add mageLevel dummy


scoreboard objectives add xpDisplay dummy

scoreboard objectives add mobKills minecraft.custom:minecraft.mob_kills

scoreboard objectives add damageTaken minecraft.custom:minecraft.damage_taken
scoreboard objectives add damageTanked minecraft.custom:minecraft.damage_resisted
scoreboard objectives add damageBlocked minecraft.custom:minecraft.damage_blocked_by_shield


scoreboard objectives add BowAttack minecraft.custom:minecraft.mob_kills

scoreboard objectives add drankPotion minecraft.used:minecraft.potion
scoreboard objectives add enchantItem minecraft.custom:minecraft.enchant_item


scoreboard objectives add mana dummy
scoreboard objectives add manaMax dummy
scoreboard objectives add souls dummy

scoreboard objectives add shaper dummy
scoreboard objectives add dune dummy
scoreboard objectives add snout dummy
scoreboard objectives add silence dummy

scoreboard objectives add host dummy
scoreboard objectives add ward dummy
scoreboard objectives add vital dummy
scoreboard objectives add spire dummy

scoreboard objectives add wayfinder dummy
scoreboard objectives add wild dummy
scoreboard objectives add eye dummy
scoreboard objectives add sentry dummy

scoreboard objectives add raiser dummy
scoreboard objectives add stray dummy
scoreboard objectives add echo dummy
scoreboard objectives add storm dummy

scoreboard objectives add coast dummy
scoreboard objectives add tide dummy

scoreboard objectives add ravine dummy
scoreboard objectives add rib dummy

scoreboard objectives add vex dummy

scoreboard objectives add shaperOld dummy
scoreboard objectives add duneOld dummy
scoreboard objectives add snoutOld dummy
scoreboard objectives add silenceOld dummy

scoreboard objectives add hostOld dummy
scoreboard objectives add wardOld dummy
scoreboard objectives add vitalOld dummy
scoreboard objectives add spireOld dummy

scoreboard objectives add wayfinderOld dummy
scoreboard objectives add wildOld dummy
scoreboard objectives add eyeOld dummy
scoreboard objectives add sentryOld dummy

scoreboard objectives add raiserOld dummy
scoreboard objectives add strayOld dummy
scoreboard objectives add echoOld dummy
scoreboard objectives add stormOld dummy

scoreboard objectives add coastOld dummy
scoreboard objectives add tideOld dummy

scoreboard objectives add ravineOld dummy
scoreboard objectives add ribOld dummy

scoreboard objectives add vexOld dummy



scoreboard objectives add progressDune dummy
scoreboard objectives add progressSnout dummy
scoreboard objectives add progressSilence dummy

scoreboard objectives add progressVital dummy
scoreboard objectives add progressWard dummy
scoreboard objectives add progressSpire dummy

scoreboard objectives add progressWild dummy
scoreboard objectives add progressEye dummy
scoreboard objectives add progressSentry dummy

scoreboard objectives add progressStray dummy
scoreboard objectives add progressEcho dummy
scoreboard objectives add progressStorm dummy

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

scoreboard objectives add wayfinderDamage dummy


scoreboard players set @a sneakTimer 0

scoreboard players set @a NRcooldownTimer 0
scoreboard players set @a NRcooldownTimer2 0

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


# Create Constant scoreboard objectives for operations.
scoreboard objectives add constants dummy
scoreboard players set 1 constants 1
scoreboard players set 2 constants 2
scoreboard players set 3 constants 3
scoreboard players set 4 constants 4
scoreboard players set 5 constants 5
scoreboard players set 6 constants 6
scoreboard players set 7 constants 7
scoreboard players set 8 constants 8
scoreboard players set 9 constants 9
scoreboard players set 10 constants 10
scoreboard players set 20 constants 20
scoreboard players set 24 constants 24
scoreboard players set 40 constants 40
scoreboard players set 100 constants 100



# Frankenstein score counter and kill counts. Anything outside normal mob kills will be counted as extra kills for the frankenstein score.

scoreboard objectives add summonSuccess dummy

scoreboard objectives add frankensteinScore dummy
# 1 score per kill
scoreboard objectives add frankensteinKills minecraft.custom:minecraft.mob_kills
# 10 score per kill
scoreboard objectives add frankensteinWitherKills minecraft.killed:minecraft.wither
# 25 score per kill
scoreboard objectives add frankensteinDragonKills minecraft.killed:minecraft.ender_dragon
# 5 score per kill
scoreboard objectives add frankensteinElderKills minecraft.killed:minecraft.elder_guardian
# 5 score per kill
scoreboard objectives add frankensteinWardenKills minecraft.killed:minecraft.warden
# 3 score per kill
scoreboard objectives add frankensteinRavagerKills minecraft.killed:minecraft.ravager
# 3 score per kill
scoreboard objectives add frankensteinPiglinBruteKills minecraft.killed:minecraft.piglin_brute
# 2 score per kill
scoreboard objectives add frankensteinWitchKills minecraft.killed:minecraft.witch

# Direction scoreboard for the necromancer's summon check.
scoreboard objectives add playerFacing dummy



##real spell scoreboards
#fireball
scoreboard objectives add 2457-1364 trigger
#damage orb
scoreboard objectives add 6781-6345 trigger
#heal pool
scoreboard objectives add 0123-9678 trigger
#frankenstein (zomb, skel, with)
scoreboard objectives add 8259-8215 trigger
scoreboard objectives add 8259-9671 trigger
scoreboard objectives add 8259-2315 trigger




#fake spell scoreboards
scoreboard objectives add 7456-2314 trigger
scoreboard objectives add 9124-4841 trigger
scoreboard objectives add 9725-4688 trigger
scoreboard objectives add 8942-6759 trigger