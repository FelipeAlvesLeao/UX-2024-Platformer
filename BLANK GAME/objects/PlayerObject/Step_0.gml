//player input logic
if(hascontrol) {
var key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var key_jump = keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("W"));}
else {
	key_right = 0;
	key_left = 0;
	key_jump = 0;
	}
//moving logic
var move = key_right - key_left;
h_spd = move * walk_spd;
v_spd = v_spd + grv;
//jumping and walljumping logic
if(place_meeting(x, y+1, WallObject) and (key_jump)) {
	v_spd = jump_spd;
}
//if(place_meeting(x+h_spd, y, WallObject) and key_jump) 
//{
//	direction = 180;
//	v_spd = jump_spd;
//	h_spd = -walk_spd * move * 10;
//	}
//collision logic
if(place_meeting(x+h_spd, y, WallObject)){ 
	while(!place_meeting(x+sign(h_spd),y, WallObject)) {
		x = x + sign(h_spd);
		}
	h_spd = 0;
	
	}
x = x + h_spd;	

if(place_meeting(x, y+v_spd, WallObject)){ 
	while(!place_meeting(x,y+sign(v_spd), WallObject)) {
		y = y + sign(v_spd);
		}
	v_spd = 0;
	}	
	
y = y + v_spd;
