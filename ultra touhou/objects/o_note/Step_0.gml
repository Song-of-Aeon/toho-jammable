count += global.truetime;

if count >= 185 {
    y += vspd*global.truetime;
}

if y < 720 + sprite_height/2 {
    if y <= o_melodychaser.bar {
		if y <= -256 {
            instance_destroy();
        }
    }
}