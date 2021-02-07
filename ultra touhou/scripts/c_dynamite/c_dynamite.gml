function c_dynamite() {
	if count = 0 {
		boom = false;
		var _create = function(this) {
			this.speed = 1
			this.direction = 90;
		}
		var _step = function(this) {
			if this.y > 480 {
				boom = true;
			}
		}
		Bullet(_step, _create, x, y);
	}
	if boom {
		var _create = function(this) {
			speed = random(15)+10;
		}
		var _step = function(this) {
			speed = speed/1.1;
		}
		Bullet(_step, _create, x, y);
	}
	if count % 20 {
		var _create = function(this) {
			
		}
		var _step = function(this) {
			
		}
		Bullet(_step, _create, x, y);
	}
}