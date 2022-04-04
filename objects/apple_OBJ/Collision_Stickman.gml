if health < global.maxHealth {
	health += 10;
	audio_play_sound(Bloop_SND,1,false);
	instance_destroy(self);
}