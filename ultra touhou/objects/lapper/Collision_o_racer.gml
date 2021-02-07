/// @description Insert description here
// You can write your code in this editor
yeah = true;
for(i = 0; i < instance_number(checkpoint); i++){
	if(instance_find(checkpoint,i).touched == false) yeah = false;
}
if(yeah == true){
		o_racer.lap++;
		checkpoint.touched = false;
		audio_play_sound(se_lap, 0, false);
}