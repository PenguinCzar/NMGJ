if (timer > 0){
   timer--;
}else{
	if(buffer > 5){
		buffer--;	
	}
	if(oPlayer.Scheme == 1){
		oPlayer.Scheme = 2;
	}else{
		oPlayer.Scheme = 1;	
	}
	timer = room_speed * buffer;
}