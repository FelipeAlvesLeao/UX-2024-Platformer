draw_set_color(c_black);
draw_rectangle(0,0,room_width, 128, false);
draw_rectangle(0, room_height-128,room_width,room_height,false);

DrawSetText(c_black, FonteMenu, fa_center, fa_top);
draw_text(room_width*0.5 + 2, room_width*0.3 +2,text);
draw_set_color(c_white);
draw_text(room_width*0.5, room_width*0.3, text);