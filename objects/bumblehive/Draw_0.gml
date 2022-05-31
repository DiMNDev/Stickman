/// @description Insert description here
draw_self();
#region Draw variables
if instance_exists(bumbleBee_OBJ) {
//draw_text(x + 16, y + 32,"imgIndex" + string(image_index));
//draw_text(x + 16, y + 44,"rand" + string(rand));
//draw_text(x + 16, y + 56,"alarm0" + string(alarm[0]));
//draw_text(x + 16, y + 68,"imgAngle" + string(image_angle));
//draw_text(x + 16, y + 82,"i" + string(iVar));
draw_text(x + 16, y + 94,"Bees" + string(beeTracker[id]));
draw_text(x + 16, y + 106,"BeeCount" + string(array_length(beeTracker[id])));
}
#endregion
