draw_sprite(s_wheel, 0, 280-10, 160+20);
draw_set_font(ft_wheel);
draw_set_halign(fa_center);
draw_text(279-40-10, 157-20, string(lap)+"/3");
draw_sprite(s_bar, 0, 0+45, 200-20);
draw_set_halign(fa_left);
draw_text(15+45, 180-20, string_copy(string(timer), 0, 5));
if(lap == 3){
	draw_set_alpha(0.75);
	draw_set_color(c_black);
	draw_rectangle(50,20,200,150,false);	
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(60,30,"\n\nYOUR TIME: " + string(time) + "\n\nBEST TIME: 65.67");
	if(camheight < -200){
		room = room_vn4;	
		application_surface_draw_enable(true);
	}
}