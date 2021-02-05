/// @description Insert description here
// You can write your code in this editor
if(reading){
	if(vn.onWord >= string_length(vn.pages[vn.onPage].text)+1){
		reading = false;
	}
	else{
		vn.onWord += vn.pages[vn.onPage].spd/60;
		if(keyboard_check(vk_control)){
			vn.onWord = string_length(vn.pages[vn.onPage].text)+1;
		}
	}
}
else{
	if(vn.pages[vn.onPage].wait or keyboard_check(vk_control) or keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("Z")) or keyboard_check_pressed(ord("S"))){
		if(array_length(vn.pages) <= vn.onPage+1){
			vn.pages[vn.onPage].onFinish();
			vn.onFinish();	
		}
		else{
			vn.pages[vn.onPage].onFinish();
			vn.onPage++;
			vn.onWord = 0;
			reading = true;
		}
	}
}