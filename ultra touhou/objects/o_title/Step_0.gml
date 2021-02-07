if keyboard_check_pressed(vk_down) || keyboard_check_pressed(vk_up) {
	if pos = 1 {
		x = 625;
		y = 615;
		pos = 0;
	} else {
		x = 575;
		y = 740;
		pos = 1;
	}
}
select = keyboard_check_pressed(vk_enter) + keyboard_check_pressed(ord("Z")) + keyboard_check_pressed(ord("S")) + keyboard_check_pressed(vk_space);

if select {
	if pos = 0 {
		dark = true;
	} else {
		game_end();
	}
}
if dark {
	darker += .01;
}
if darker >= 1.2 {
	audio_stop_all();
	room = room_vn;
}