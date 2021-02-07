/// @description Insert description here
// You can write your code in this editor
if(c == 0){
	create(id);
	c = 1;
}
step(id);
if owner = o_damnakuPlayer {
	image_alpha = .5;
}

if(y < -100){
	instance_destroy();
}
if(y > 700){
	instance_destroy();	
}
if(x < -100){
	instance_destroy();
}
if(x > 1000){
	instance_destroy();	
}
if(distance_to_object(o_damnakuPlayer) < 5 && owner != o_damnakuPlayer.id){
	//
}