draw_self();
if runTimer > 0 draw_healthbar(x - 32, y + 40, x + 32, y + 50,runTimer,c_dkgray,c_red,c_red,0,true,true)

#region Player input variables

//draw_text(x + 16, y + 32,"keyUp" + string(key_up));
//draw_text(x + 16, y + 44,"keyDown" + string(key_down));
//draw_text(x + 16, y + 56,"keyRight" + string(key_right));
//draw_text(x + 16, y + 68,"keyLeft" + string(key_left));
draw_text(x + 16, y + 82,"flick" + string(flick));
draw_text(x + 16, y + 94,"flicked" + string(flicked));
#endregion

#region Shader info
//draw_text(x + 16, y + 82,"ShaderSupported" + string(shadeSup));
//draw_text(x + 16, y + 94,"ShaderCompiled" + string(shadeComp));
#endregion

#region Collision variables
//draw_text(x + 16, y + 32,"vsp" + string(vsp));
//draw_text(x + 16, y + 44,"hsp" + string(hsp));
//draw_text(x + 16, y + 56,"vspDamage" + string(vspDamage));
//draw_text(x + 16, y + 68,"floorDistance" + string(floorDistance));
//draw_text(x + 16, y + 82,"ShaderSupported" + string(shadeSup));
//draw_text(x + 16, y + 94,"ShaderCompiled" + string(shadeComp));
#endregion

#region Bees & hive
//if instance_exists(bumbleBee_OBJ) {
//draw_text(x + 16, y + 32,"random" + string(bumbleBee_OBJ.ran2));
//draw_text(x + 16, y + 44,"random8" + string(bumbleBee_OBJ.ran8));
//}
#endregion

//draw_set_font(Font2);
//draw_text_color(x + 16, y + 16,coin_count,1,1,1,1,c_red);
#region dialog textbox variables
//if instance_exists(dialougeTextbox) {

//draw_text(x + 16, y + 32, "page" + string(dialougeTextbox.page));
//draw_text(x + 16, y + 44,"pageNuber" + string(dialougeTextbox.pageNumber));
//draw_text(x + 16, y + 56,"drawchar" + string(dialougeTextbox.draw_char));
//draw_text(x + 16, y + 68,"pageLength" + string(dialougeTextbox.text_length[dialougeTextbox.page]));
//draw_text(x + 64, y + 82,"alarm0 " + string(dialougeTextbox.alarm[0]));
//draw_text(x + 50, y + 94,"Txtbox Alpha " + string(dialougeTextbox.textboxAlpha));
//}
#endregion
//draw_text(x + 64, y + 82,"Sprite index " + string(sprite_index));
//draw_text(x + 50, y + 94,"Jump" + string(jump));
//draw_text(x + 16, y + 106,"dbl Jump" + string(dbl_jump));
//draw_text(x + 50, y + 118,"Air" + string(air));
//draw_text(x + 16, y + 130,"Flick" + string(flick));
//draw_text(x + 16, y + 142,"localX" + string(localX));
//draw_text(x + 16, y + 154,"localY" + string(localY));
//draw_text(x + 16, y + 166,"dragStartY" + string(dragStartY));
//draw_text(x + 16, y + 178,"dragEndY" + string(dragEndY));
//draw_text(x + 16, y + 190,"flickDirection" + string(flickDirection));
//draw_text(x + 16, y + 202,"imageSpeed" + string(image_speed));
//draw_text(x + 16, y + 214,"iceCheck" + string(iceCheck));


//draw_text(x+50,y-152,"Grounded" + string(grounded));
//draw_text(x+50,y-140,"StickY" + string(y));
//draw_text(x+50,y-128,"StickX" + string(x));
//draw_text(x+50,y-106,"ccnt" + string(global.ccntgun));

//draw_text(x+50,y-82,"faceL" + string(face_left));
//draw_text(x+50,y-70,"1tch" + string(one_touch));
//draw_text(x+50,y-58,"2tch" + string(two_touch));
//draw_text(x+50,y-46,"DRAGY" + string(drag_y));
//draw_text(x+50,y-34,"DRAGX" + string(drag_x));
//draw_text(x+50,y-22,"AIR" + string(air));
//draw_text(x+50,y-10,"DJMP" + string(dbl_jump));
//draw_text(x+50,y+2,"!MVE" + string(move_1));
//draw_text(x+50,y+14,"JMP" + string(jump));

//draw_text(x+50,y+38,"VSP" + string(vsp));
//draw_text(x+50,y+50,"HSP" + string(hsp));
//draw_text(x+50,y+62,"KL" + string(key_left));
//draw_text(x+50,y+74,"KR" + string(key_right));
//draw_text(x+50,y+86,"SC" + string(scr_center));
//draw_text(x+50,y+98,"FLK" + string(flick));
//draw_text(x+50,y+110,"imgSpd" + string(image_speed));
//draw_text(x+50,y+122,"img#" + string(image_number));
//draw_text(x+50,y+134,"imgindx" + string(image_index));
//draw_text(x+50,y+146,"Sprindx" + string(sprite_index));