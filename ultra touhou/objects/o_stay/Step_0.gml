if !instance_exists(tail) {
    instance_destroy();
}

if source = o_roll {
    switch image_angle {
        case -90:
            holder = o_melodychaser.left;
            break;
        case 0:
            holder = o_melodychaser.down;
            break;
        case 180:
            holder = o_melodychaser.up;
            break;
        case 90:
            holder = o_melodychaser.right;
            break;
    }
} else {
    switch image_angle {
        case -90:
            holder = o_melodychaser.heldleft;
            break;
        case 0:
            holder = o_melodychaser.helddown;
            break;
        case 180:
            holder = o_melodychaser.heldup;
            break;
        case 90:
            holder = o_melodychaser.heldright;
            break;
    }
}
if holder = false {
    countwo++;
    tail.image_alpha -= 1/22;
    if countwo >= 22 {
        hspd = tail.hspd;
        vspd = tail.vspd;
    }
} else {
    countwo = 0;
    tail.image_alpha = 1;
}
if source = o_roll {
    if holder {
        with instance_create(x, y, o_hitfx) {
            image_angle = other.image_angle;
        }
    }
} else if count >= 10 && vspd = 0 && holder {
    with instance_create(x, y, o_hitfx) {
        image_angle = other.image_angle;
    }
    count = 0;
}
count += 1;

x += hspd;
y += vspd;

