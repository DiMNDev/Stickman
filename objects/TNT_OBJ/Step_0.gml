
if sprite_index = TNTLit_ANI {
	if image_index > image_number - 1  {
		sprite_index = TNTExplosion_ANI;
		
	}
}
if sprite_index = TNTExplosion_ANI {
	audio_stop_sound(sizzle_SND);
	audio_play_sound(Explosion_SND,5,false);
	if image_index > image_number - 1 {
		instance_destroy(self);
		
	}
}
		