depth = -9999
//gesture variable
dialougeTap = 0;
//textbox parameters
screenWidth = display_get_gui_width();
screenHeight = display_get_gui_height();
boxBorder = 16;
textBorder = 8;
textbox_width = screenWidth - (boxBorder*2);
textbox_height = 128;
alarm_set(0,-1);
line_sep = 18;
line_width = textbox_width - textBorder*2;
textboxSprite = textbox00_sp;
textboxImage = 0;
textboxImageSpeed = 16/60;
textboxAlpha = .9;
textAlpha = 1;

//the text
page = 0;
pageNumber = 0;
text[0] = "";
text_length[0] = string_length(text[0]);
draw_char = 0;
text_spd = .3;

setup = false;

