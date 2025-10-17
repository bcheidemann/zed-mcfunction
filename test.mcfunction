# source: https://github.com/BlackShadowHRD/boti_timer

# boti_timer:init — global timer, op-controlled

# Objectives
scoreboard objectives add gt_time dummy
scoreboard objectives add gt_running dummy
scoreboard objectives add gt_mode dummy
scoreboard objectives add gt_color dummy
scoreboard objectives add gt_h dummy
scoreboard objectives add gt_m dummy
scoreboard objectives add gt_s dummy
scoreboard objectives add gt_ht dummy
scoreboard objectives add gt_ho dummy
scoreboard objectives add gt_mt dummy
scoreboard objectives add gt_mo dummy
scoreboard objectives add gt_st dummy
scoreboard objectives add gt_so dummy
scoreboard objectives add gt_const dummy
scoreboard objectives add timerEnabled dummy

# for custom countdown seconds
scoreboard objectives add gt_set trigger

# Constants
scoreboard players set c10 gt_const 10
scoreboard players set c60 gt_const 60
scoreboard players set c3600 gt_const 3600

# Defaults (use fake player 'global')
scoreboard players add global gt_time 0
scoreboard players add global gt_running 0

# 0 for disabled (default) 1 for enabled
scoreboard players set global timerEnabled 1

# 0 = count up, 1 = countdown
scoreboard players set global gt_mode 0

# 0=gold,1=yellow,2=light_purple,3=green,4=aqua,5=red,6=gray
scoreboard players set global gt_color 1

# Show 00:00:00
function boti_timer:display/update_all_enabled

# Start scheduled tick
schedule function boti_timer:tick 1s

tellraw @a [{"text":"[boti_timer] Global timer loaded.","color":"yellow"},{"text":" Operators: /function boti_timer:settings/open","color":"aqua"}]
