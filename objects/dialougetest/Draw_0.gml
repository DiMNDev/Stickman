//draw the menu background

draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height,0,c_white,.75);
draw_set_font(Dialouge_FNT);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

for (var i = 0; i < op_length; i++)
{
draw_text(x+op_border, y+op_border + op_space*i, option[i]);	
}
