try{ //maybe avoid crash
	if(other.owner != id){//this bullet is not yours, take damage.
		score+=10+ 10*((other.damage-1)*3);
		hp -= 10+ 10*((other.damage-1)*3);
		instance_destroy(other);
	}	
}
catch(e){
	
}