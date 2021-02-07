function c_rock1() {
	if count % 20 = 0 {
		var _create = function(this) {
			this.direction = random(180)+180;
			this.speed = 2;
			this.hp = 50;
			this.sprite_index = s_roundbul;
			this.image_xscale = 2;
			this.image_yscale = 2;
		}
		var _step = function(this) {
			this.bitches = collision_point(this.x, this.y, o_danmaku_bullet, false, true);
			if this.bitches.owner == o_damnakuPlayer.id {
				
				this.hp -= this.bitches.damage;
				instance_destroy(this.bitches);
			}
			if this.hp <= 0 {
				repeat(10) {
					var __create = function(this) {
						this.direction = random(360);
						this.speed = 5;
						this.hp = 20;
						this.sprite_index = s_shardbul;
					}
					var __step = function(this) {
						this.bitches = collision_point(this.x, this.y, o_danmaku_bullet, false, true);
						if this.bitches.owner = o_damnakuPlayer {
							this.hp -= this.bitches.damage;
							instance_destroy(this.bitches);
						}
						if this.hp <= 0 {
							var i = 60;
							repeat(10) {
								var ___create = function(this) {
									this.speed = 0;
								}
								var ___step = function(this) {
									speed += .1;
								}
								var guy = Bullet(___step, ___create, this.x, this.y);
								guy.direction = i;
								i += 60;
							}
				
							instance_destroy(this.id);
						}
					}
					Bullet(__step, __create, this.x, this.y);
				}
				
				instance_destroy(this.id);
			}
		}
		Bullet(_step, _create, x, y);
	}
}