// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_leave() {
	if(image_alpha > 0) {
		image_alpha-=0.02;
	} else if (o_damnakuPlayer.alpha > 0) {
			o_damnakuPlayer.alpha-=0.02;
	} else {
			if(score > 80480){
				instance_create(0,0,o_won);		
			}
			else{
				instance_create(0,0,o_lost);		
			}
			room = 	room_vn2;
	}
	instance_create(x+random(100),y+random(100),boomer);
}