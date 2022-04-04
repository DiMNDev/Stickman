if instance_exists(menuHUD) instance_destroy(menuHUD)
else
instance_create_depth(x+16,y+16,-2,menuHUD)