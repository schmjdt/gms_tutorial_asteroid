/// @description 

global._score += 10;

audio_play_sound(snd_die, 1, false);

instance_destroy();

with (other) {
	instance_destroy();
	
	if (sprite_index == spr_asteroid_large) {
		repeat (2) {
			var inst = instance_create_layer(x, y, "Instances", obj_asteroid);
			inst.sprite_index = spr_asteroid_med;
		}
	} else if (sprite_index == spr_asteroid_med) {
		repeat (2) {
			var inst = instance_create_layer(x, y, "Instances", obj_asteroid);
			inst.sprite_index = spr_asteroid_small;
		}
	}
	
	repeat (10) {
		instance_create_layer(x, y, "Instances", obj_debris);
	}
}