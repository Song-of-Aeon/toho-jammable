if !instance_exists(tail) {
    instance_destroy();
}

count += global.truetime;
sprite_index = s_freeze;

if count >= 185 {
    y += vspd*global.truetime;
}

if tail != 0 {
    with tail {
        head = other.id;
    }
    
}

if y < 720 + sprite_height/2 {
    if y <= o_melodychaser.bar {
		if y <= -256 {
            instance_destroy();
        }
    }
}