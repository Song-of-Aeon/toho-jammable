count++;
switch(attack){
	case 0:
		var _create = function(this){
				this.speed = 2;
				this.direction = 90+(count*2) + (count*20);
			}
			var _step = function(this){
				this.direction += 0.2;
			}	
			//if(count%3 == 0) {
				Bullet(_step,_create,x,y);
			//}
			break;
		case 1:
		
		break;
	
}