/// @description Insert description here
// You can write your code in this editor
//draw_self();
var _m = matrix_transpose(matrix_get(matrix_view));
_m[12] = x; _m[13] = y; _m[14] = 0;
matrix_set(matrix_world, _m);
if keyboard_check(vk_left) && keyboard_check(vk_shift) {
	draw_sprite_ext(s_carleft, -1, 0, 0, 0.75,0.75,0,c_white,1);
} else if keyboard_check(vk_right) && keyboard_check(vk_shift) {
	draw_sprite_ext(s_carright, -1, 0, 0, 0.75,0.75,0,c_white,1);
} else {
	draw_sprite_ext(s_car, -1, 0, 0, 0.75,0.75,0,c_white,1);
}
matrix_stack_pop();
matrix_set(matrix_world, matrix_stack_top());