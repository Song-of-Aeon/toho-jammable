function c_input() {
	right = keyboard_check(vk_right); //directional, default is held
	left = keyboard_check(vk_left);
	up = keyboard_check(vk_up);
	down = keyboard_check(vk_down);

	rightp = keyboard_check_pressed(vk_right); //directional other
	leftp = keyboard_check_pressed(vk_left);
	upp = keyboard_check_pressed(vk_up);
	downp = keyboard_check_pressed(vk_down);
	rightr = keyboard_check_released(vk_right);
	leftr = keyboard_check_released(vk_left);
	upr = keyboard_check_released(vk_up);
	downr = keyboard_check_released(vk_down);

	jump = keyboard_check_pressed(ord("S")); //main buttons, default is pressed
	attack = keyboard_check_pressed(ord("A"));
	special = keyboard_check_pressed(ord("D"));

	jumph = keyboard_check(ord("S")); //main buttons other
	attackh = keyboard_check(ord("A"));
	specialh = keyboard_check(ord("D"));
	jumpr = keyboard_check_released(ord("S"));
	attackr = keyboard_check_released(ord("A"));
	specialr = keyboard_check_released(ord("D"));

	enter = keyboard_check_pressed(vk_enter); //misc useful buttons, all as pressed
	esc = keyboard_check_pressed(vk_escape);
	tab = keyboard_check_pressed(vk_tab);
	ctrl = keyboard_check_pressed(vk_control);
	space = keyboard_check_pressed(vk_space);


	select = jump + enter; //menu inputs, all are pressed
	back = attack + esc;
	swap = special + tab;
	
	hput = right - left; //hput and vput
	vput = down - up;

}