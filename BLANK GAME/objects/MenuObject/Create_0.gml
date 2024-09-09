/// @description Insert description here
// You can write your code in this editor
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 100;
menu_x = gui_width/2;
menu_y = gui_height/8;
menu_y_target = gui_height - gui_margin;
menu_speed = 25;
menu_font = Font2;
menu_itemheight = font_get_size(Font2);
menu_comitted = -1;
menu_control = true;
audio_play_sound(BGM_Menu, 0, true);
menu[2] = "Jogar";
menu[1] = "Continuar";
menu[0] = "Fechar";
menu_items = array_length(menu);
menu_cursor = 2;

#macro SAVEFILE "SaveDoJogo.sav"