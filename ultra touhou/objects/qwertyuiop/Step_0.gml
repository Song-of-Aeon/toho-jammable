c_input();

script_execute(actionstate);
script_execute(movestate);
if jump {
	show_debug_message(sprite_index);
}