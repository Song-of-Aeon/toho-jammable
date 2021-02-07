if keyboard_check_pressed(vk_down) || keyboard_check_pressed(vk_up) && !dark {
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
if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right)) && global.partial && !dark {
	x = 970;
	y = 670;
	pos = 2;
}
select = keyboard_check_pressed(vk_enter) + keyboard_check_pressed(ord("Z")) + keyboard_check_pressed(ord("S")) + keyboard_check_pressed(vk_space);

if select && !dark {
	if pos = 0 {
		dark = true;
	} else if pos = 1 {
		game_end();
	} else {
		room = selector;
	}
}
if keyboard_check_pressed(ord("P")) && !dark {
	room = selector;
}
if dark {
	darker += .01;
}
if darker >= 1.2 {
	audio_stop_all();
	room = room_vn;
}