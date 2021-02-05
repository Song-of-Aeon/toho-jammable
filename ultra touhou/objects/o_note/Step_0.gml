count += global.truetime;

if count >= 240 {
    y += vspd*global.truetime;
}

if y < 720 + sprite_height/2 {
    if y <= o_melodychaser.bar {
		if y <= -32 {
            instance_destroy();
        }
    }
}