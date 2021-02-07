if !instance_exists(tail) {
    instance_destroy();
}

if count > 2 {count += global.truetime;
} else {
	count += 1;
}
sprite_index = s_freeze;

if count >= 135 {
    y += vspd*global.truetime;
}

if tail != 0 {
    with tail {
        head = other.id;
    }
    
}

if y < 720 + sprite_height/2 {
    if y <= o_melodychaser.bar {
		if y <= -1024 {
            instance_destroy();
        }
    }
}