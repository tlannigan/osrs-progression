# Initialize scoreboard
scoreboard objectives add defence_lvl dummy
scoreboard objectives add defence_exp dummy
scoreboard objectives add defence_req_exp dummy

# Methods of EXP gain
scoreboard objectives add defence_earn_1 minecraft.custom:minecraft.damage_taken
scoreboard objectives add defence_earn_2 minecraft.custom:minecraft.damage_blocked_by_shield