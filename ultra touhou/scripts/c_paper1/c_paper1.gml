function c_paper1() {
	if count % 600 = 0 {
		audio_play_sound(se_shoot, 0, false);
		var i = 0;
		repeat (30) {
			var _create = function(this) {
				this.speed = 4;
				this.sprite_index = s_plusbul;
				this.bounced = false;
			}
			var _draw = function(this) {
				this.image_angle += this.speed;
			}
			var _step = function(this) {
				if (this.x < 0 || this.x > 640 || this.y < 0 || this.y > 480) && !this.bounced {
					this.count++;
					this.speed = 0;
				}
				if this.count > 40 && !this.bounced && count % 600 > 200 {
					this.speed = 5;
					this.direction = point_direction(this.x, this.y, 640/2, 480/1.3);
					this.bounced = true;
				}
				if collision_point(640/2, 480/1.3, this.id, false, false) {
					var __create = function(this){
						this.speed = 3;
						this.direction = random(360);
					}
					var __step = function(this){
						this.direction += 0.4;
					}	
					Bullet(__step,__create, this.x, this.y);
					instance_destroy(this.id);
				}
			}
			guy = Bullet_draw(_step, _create, _draw, x, y);
			guy.direction = i;
			i += 12;
		}
		
	}
	if count % 8 = 0 {
		var _create = function(this){
			this.speed = 1;
			this.direction = -90;
			this.sprite_index = s_shardbul;
		}
		var _step = function(this){
			this.speed = this.speed*1.02;
		}
		//Bullet(_step, _create, (sin(count/100)+1)*room_width/2, 0);
		Bullet(_step, _create, (sin(count-10/100)+1)*640/2, 0);
		Bullet(_step, _create, (sin(count-10/100)+1)*640/2, 0);
	}
	//sqrt(abs(cos(x))) for funny
}