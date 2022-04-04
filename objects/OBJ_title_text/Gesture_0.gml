 audio_play_sound(Select_SND,1,false);
songToggle += 1;
if songToggle > 3 songToggle = 1;
if songToggle = 1 {
	audio_play_sound(CookingThisOneUp_SNG,1,true);
	audio_stop_sound(mysticMorning_SND);
}
if songToggle = 2 {
	audio_stop_sound(CookingThisOneUp_SNG);
	audio_play_sound(JustALittleIf,1,true);
}
if songToggle = 3 {
	audio_stop_sound(JustALittleIf);
	audio_play_sound(mysticMorning_SND,1,true);
}
 sprite_index = ANI_title_text;