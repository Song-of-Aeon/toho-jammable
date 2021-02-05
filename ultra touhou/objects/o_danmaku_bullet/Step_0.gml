/// @description Insert description here
// You can write your code in this editor
if(c == 0){
	create(id);
	c = 1;
}
step(id);

if(y < -200){
	instance_destroy();
}
if(y > 1000){
	instance_destroy();	
}