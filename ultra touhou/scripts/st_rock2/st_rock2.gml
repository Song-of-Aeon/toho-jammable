function st_rock2() {
	//youre not gonna like st_rock
	if timer % 10 = 0 {
		var _create = function(this) {
			this.speed = 4;
			this.direction = 90;
			this.damage = 6;
			this.sprite_index = s_bulrock;
		}
		var _step = function(this) {
			this.speed = this.speed*1.1;
			if this.speed >= 12 && y > 0 {
				var __create = function(this) {
					this.speed = 4;
					this.direction = 70;
					this.damage = 6;
					this.sprite_index = s_bulrock;
				}
				var __step = function(this) {
					this.speed = this.speed*1.1;
					if this.speed >= 12 && y > 0 { //this is disgusting
						var ___create = function(this) {
							this.speed = 4;
							this.direction = 70;
							this.damage = 6;
							this.sprite_index = s_bulrock;
						}
						var ___step = function(this) {
							this.speed = this.speed*1.1;
						}
						var ___draw = function(this) {
							this.image_xscale = this.speed/8;
							this.image_yscale = this.speed/8;
						}
						Bullet_draw(___step, ___create, ___draw, this.x, this.y);
				
						var ___create = function(this) {
							this.speed = 4;
							this.direction = 110;
							this.damage = 6;
							this.sprite_index = s_bulrock;
						}
						var ___step = function(this) {
							this.speed = this.speed*1.1;
						}
						var ___draw = function(this) {
							this.image_xscale = this.speed/8;
							this.image_yscale = this.speed/8;
						}
						Bullet_draw(___step, ___create, ___draw, this.x, this.y);
				
						instance_destroy(this);
					}
				}
				var __draw = function(this) {
					this.image_xscale = this.speed/8;
					this.image_yscale = this.speed/8;
				}
				Bullet_draw(__step, __create, __draw, this.x, this.y);
				
				var __create = function(this) {
					this.speed = 4;
					this.direction = 110;
					this.damage = 6;
					this.sprite_index = s_bulrock;
					
				}
				var __step = function(this) {
					this.speed = this.speed*1.1;
					if this.speed >= 12 && y > 0 {
						var ___create = function(this) {
							this.speed = 4;
							this.direction = 70;
							this.damage = 6;
							this.sprite_index = s_bulrock;
						}
						var ___step = function(this) {
							this.speed = this.speed*1.1;
						}
						var ___draw = function(this) {
							this.image_xscale = this.speed/8;
							this.image_yscale = this.speed/8;
						}
						Bullet_draw(___step, ___create, ___draw, this.x, this.y);
				
						var ___create = function(this) {
							this.speed = 4;
							this.damage = 6;
							this.direction = 110;
							this.sprite_index = s_bulrock;
						}
						var ___step = function(this) {
							this.speed = this.speed*1.1;
						}
						var ___draw = function(this) {
							this.image_xscale = this.speed/8;
							this.image_yscale = this.speed/8;
						}
						Bullet_draw(___step, ___create, ___draw, this.x, this.y);
				
						instance_destroy(this);
					}
				}
				var __draw = function(this) {
					this.image_xscale = this.speed/8;
					this.image_yscale = this.speed/8;
				}
				Bullet_draw(__step, __create, __draw, this.x, this.y);
				
				instance_destroy(this);
			}
		}
		var _draw = function(this) {
			this.image_xscale = this.speed/12;
			this.image_yscale = this.speed/12;
		}
		Bullet_draw(_step, _create, _draw, x, y);
		
	}
}