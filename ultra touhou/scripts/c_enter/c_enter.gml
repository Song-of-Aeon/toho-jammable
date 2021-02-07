// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_enter() {
	if(image_alpha < 1) {
		image_alpha+=0.02;
	} else {
		attack++;
	}
}