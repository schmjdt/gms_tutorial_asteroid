/// @description 

if (keyboard_check_pressed(ord("R")))	game_restart();
if (keyboard_check_pressed(vk_escape))	game_end();
if (keyboard_check_pressed(vk_enter))	{
	switch(room) {
		case rm_start: 
			room_goto(rm_game);
			break;
		case rm_win:
		case rm_gameover:
			game_restart();
			break;
	}
}

if (room == rm_game) {
	if (global._score >= 1000) {
		room_goto(rm_win);	
	}
	
	if (global._lives <= 0) {
		room_goto(rm_gameover);	
	}
}