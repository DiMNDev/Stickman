textbox_x = camera_get_view_x(view_camera[0]) + boxBorder;
textbox_y = camera_get_view_y(view_camera[0]) + screenHeight - 128 - boxBorder;

#region setup
if setup == false 
{
setup = false
draw_set_color(c_white);
draw_set_font(Dialouge_FNT);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

//loop through the pages
pageNumber = array_length(text);
for (var p = 0; p < pageNumber; p++)
{
	
	//find how many characters on each page and store that number in the "text_length" array
text_length[p] = string_length(text[p]);
//get the x position for the textbox
	//no character (center screen)
text_x_offset[p] = 0;
}
}
#endregion
#region typing the text

if draw_char < text_length[page]
{
draw_char += text_spd;
draw_char = clamp(draw_char, 0, text_length[page]);

}
#endregion
#region flip through pages

if dialougeTap = 1 
{
//if typing is done
if draw_char == text_length[page] 
{
	// next page
	if page < pageNumber-1 
		{
			if alarm[2] > -1 alarm_set(2,-1);
			page++;
			draw_char = 0;
			dialougeTap = 0;
		}
		//destroy textbox
		else {
		instance_destroy();
		}
	}
	//if not done typing
	else 
	{
	draw_char = text_length[page];
	dialougeTap = 0;
	}

} else if draw_char = text_length[page] && page < pageNumber - 1 && alarm[2] == -1 {
alarm_set(2,90);	
}

#endregion
#region draw the textbox
textboxImage += textboxImageSpeed;
textboxSpriteWidth = sprite_get_width(textboxSprite);
textboxSprtieHeight = sprite_get_height(textboxSprite);
//back of the textbox
draw_sprite_ext(textboxSprite,textboxImage, textbox_x + text_x_offset[page],textbox_y, textbox_width/textboxSpriteWidth,textbox_height/textboxSprtieHeight,0,c_white,textboxAlpha);

//draw the text
var _drawText = string_copy(text[page], 1, draw_char);
draw_text_ext_color(textbox_x + text_x_offset[page]+ textBorder, textbox_y + textBorder, _drawText, line_sep, line_width,c_white,c_white,c_white,c_white,textAlpha);
#endregion
#region set timer to auto cycle page

#endregion
#region set timer on last page after text is typed

	if (alarm[1] == -1){
		if (draw_char == text_length[page] && page == pageNumber -  1) {
		alarm_set(1,30);
		}
	}
#endregion
