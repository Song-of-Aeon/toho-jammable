if count > 2 {count += global.truetime;
} else {
	count += 1;
}

if count >= 135 {
    y += vspd*global.truetime;
}

if y < 720 + sprite_height/2 {
    if y <= o_melodychaser.bar {
		if y <= -256 {
            instance_destroy();
        }
    }
}