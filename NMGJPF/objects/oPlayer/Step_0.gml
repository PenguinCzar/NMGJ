if(Scheme == 1){
hInput = keyboard_check(vk_right) - keyboard_check(vk_left);
vInput = keyboard_check(vk_down) - keyboard_check(vk_up);
}else{
hInput = keyboard_check(vk_left) - keyboard_check(vk_right);
vInput = keyboard_check(vk_up) - keyboard_check(vk_down);
}

if (hInput != 0 || vInput != 0){
	if (spd + acc < 10){
		spd = spd + acc;
	}

	dir = point_direction(0, 0, hInput, vInput);
	moveX = lengthdir_x(spd,dir);
	moveY = lengthdir_y(spd,dir);
	
	if (place_meeting(x+moveX,y,oWall)){
	    place = moveX;
		if(place > 0){
			for (var i = 0; i < place;i++){
				if (!place_meeting(x+i,y,oWall)){
					moveX = i;
				}
			}
		}else{
			for (var i = 0; i > place;i--){
				if (!place_meeting(x+i,y,oWall)){
					moveX = i;
				}
			}	
		}
	}
	if (place_meeting(x,y+moveY,oWall)){
	    place = moveY;
		if(place > 0){
			for (var i = 0; i < place;i++){
				if (!place_meeting(x,y+i,oWall)){
					moveY = i;
				}
			}
		}else{
			for (var i = 0; i > place;i--){
				if (!place_meeting(x,y+i,oWall)){
					moveY = i;
				}
			}	
		}
	}
	x += moveX;
	y += moveY;
}else {
	spd = 5;
}

if(keyboard_check(vk_escape)){
	game_end();
}