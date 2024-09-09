
v_spd = v_spd + grv;

//collision logic
if(place_meeting(x+h_spd, y, WallObject)){ 
	while(!place_meeting(x+sign(h_spd),y, WallObject)) {
		x = x + sign(h_spd);
		}
	h_spd = -h_spd;
    image_xscale = sign(-h_spd);
	}
x = x + h_spd;	

if(place_meeting(x, y+v_spd, WallObject)){ 
	while(!place_meeting(x,y+sign(v_spd), WallObject)) {
		y = y + sign(v_spd);
		}
	v_spd = 0;
	}	
	
y = y + v_spd;


