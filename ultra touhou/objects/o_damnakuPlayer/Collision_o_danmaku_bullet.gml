/// @description Insert description here
// You can write your code in this editor
if(other.owner != id){//this bullet is not yours, take damage.
	if(invuln == 0){
		score -= 10000;
		invuln = 60;
	}
	instance_destroy(other);
}