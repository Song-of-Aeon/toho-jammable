if keyboard_check_pressed(vk_down) {
	pos = 1;
}
if keyboard_check_pressed(vk_left) {
	pos = 0;
}
if keyboard_check_pressed(vk_right) {
	pos = 2;
}
if keyboard_check_pressed(vk_up) {
	pos = 3;
}
select = keyboard_check_pressed(vk_enter) + keyboard_check_pressed(ord("Z")) + keyboard_check_pressed(ord("S")) + keyboard_check_pressed(vk_space);

if select {
	switch pos {
		case 2:
			room = fantasy_heaven;
			break;
		case 1:
			room = thetitle;
			break;
		case 0:
			room = room_danmaku;
			break;
		case 3:
			room = room_racer;
		
	}
}