function st_paper2() {
	if timer % 3 = 0 {
		var _create = function(this) {
			this.damage = 2.5;
			this.speed = 4;
			this.dirrection = 40+(random(40)-20);
			this.sprite_index = s_bulpaper;
			this.image_alpha = .5;
		}
		var _step = function(this) {
			this.dirrection += 2;
			this.speed += .1;
			this.direction = -floor(this.dirrection/90)*90+180;
		}	
		Bullet(_step,_create, x, y);
		var _create = function(this) {
			this.damage = 2.5;
			this.speed = 4;
			this.dirrection = 40+(random(40)-20);
			this.sprite_index = s_bulpaper;
			this.image_alpha = .5;
		}
		var _step = function(this) {
			this.dirrection += 2;
			this.speed += .1;
			this.direction = floor(this.dirrection/90)*90;
		}	
		Bullet(_step,_create, x, y);
	}
	if timer % 5 = 0 {
		var i = 64;	
		repeat(4) {
			var _create = function(this) {
				this.speed = 20;
				this.damage = 2.5;
				this.sprite_index = s_bulpaper;
				this.image_alpha = .5;
			}
			var _step = function(this) {}
			guy = Bullet(_step,_create, x, y);
			guy.direction = i;
			i += 18;
		}
	}
}