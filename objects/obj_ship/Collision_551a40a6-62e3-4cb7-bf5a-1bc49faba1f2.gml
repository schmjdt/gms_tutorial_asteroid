/// @description 

global._lives -= 1;

audio_play_sound(snd_die, 1, false);
		
instance_destroy();

repeat (10) {
	instance_create_layer(x, y, "Instances", obj_debris);
}