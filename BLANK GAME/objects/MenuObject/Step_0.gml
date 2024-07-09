menu_y += (menu_y_target - menu_y) / menu_speed;

if(menu_control) {
if(keyboard_check_pressed(vk_up)) {
	menu_cursor++;
	if(menu_cursor >= menu_items) menu_cursor = 0;
		audio_play_sound(soundSelect,1,false);
		
}
if(keyboard_check_pressed(vk_down)) {
	menu_cursor--;
	if(menu_cursor < 0) menu_cursor = menu_items - 1;
	audio_play_sound(soundSelect,1,false);
}

if(keyboard_check_pressed(vk_enter)) {
	menu_y_target = gui_height + 300;
	menu_comitted = menu_cursor;
	menu_control = false;
	audio_play_sound(soundConfirm,1,false);
}

if(menu_y < gui_height+300) && (menu_comitted != -1) { 
	switch(menu_comitted) {
		case 3: default: slide_transition(TRANS_MODE.GOTO, Room1);audio_stop_sound(BGM_Menu); audio_play_sound(BGM_Game, 0, true); break;
		case 2: {
			if(!file_exists(SAVEFILE)) {
				slide_transition(TRANS_MODE.GOTO, Room1);
				audio_stop_sound(BGM_Menu);
				audio_play_sound(BGM_Game, 0, true);
			}
			else {
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real(file);
				file_text_close(file);
				slide_transition(TRANS_MODE.GOTO,target);
				audio_stop_sound(BGM_Menu);
				audio_play_sound(BGM_Game, 0, true);
			}
		}
		break;
		case 0: game_end();
	}
	}
}