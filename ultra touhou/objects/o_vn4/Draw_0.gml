/// @description Insert description here
// You can write your code in this editor

if(!vn.pages[vn.onPage].wait){
	draw_self();
	draw_text(x+100,y+50,string_copy(vn.pages[vn.onPage].text,0,vn.onWord));
	if(talking == 0){
		draw_set_color($B57EDC);
		draw_text(x+50,y+15,"Sumireko");
	}	
	else{
		draw_set_color(c_green);
		draw_text(x+50,y+15,"Mamizou");
	}	
	draw_set_color(c_white)
} else {
	draw_self();
}
