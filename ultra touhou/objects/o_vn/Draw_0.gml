/// @description Insert description here
// You can write your code in this editor

if(!vn.pages[vn.onPage].wait){
	draw_self();
	draw_text(x+100,y+50,string_copy(vn.pages[vn.onPage].text,0,vn.onWord));
}
