if sprite_index = enemyTestBlockLeft{
hspeed += .2
if hspeed = 6 sprite_index  = enemyTestBlockRight
}

if sprite_index = enemyTestBlockRight{
hspeed -= .2
if hspeed = -6 sprite_index  = enemyTestBlockLeft
}
