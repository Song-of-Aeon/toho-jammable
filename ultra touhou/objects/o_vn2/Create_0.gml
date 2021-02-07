/// @description Insert description here
// You can write your code in this editor
Page = function(_text, _spd, _onFinish)  constructor
{
	wait = false;
	text = _text;
	spd = _spd;
	onFinish = _onFinish;
}
Wait = function(howlong, func) constructor
{
	wait = true;
	text = string_repeat(" ",howlong);
	spd = 60;
	onFinish = func
}
var wordspeed = 90;
vn = {
	pages : 	 [new Wait(0,function(){}),
new Page("So, what did you think?", wordspeed, function(){sum.image_index = sumEmotion.Happy; talking = 0}),
new Page("Nothing like the real thing, but that's fine.", wordspeed, function(){mam.image_index = mamEmotion.Smug;talking = 1}),
new Page("You picked it up pretty easily. Have you played a video game before?", wordspeed, function(){sum.image_index = sumEmotion.Surprised; talking = 0}),
new Page("Not even once.", wordspeed, function(){mam.image_index = mamEmotion.Smug2; talking = 1}),
new Page("Hm. Anyway, next up is a music game.", wordspeed, function(){sum.image_index = sumEmotion.Confused;talking = 0}),
new Page("We can play at the same time on this!", wordspeed, function(){sum.image_index = sumEmotion.Happy; talking = 0}),
new Page("This might be a bit less intuitive for you, but it should make sense.", wordspeed, function(){talking = 0}),
new Wait(20,function(){room = fantasy_heaven})





/*
new Page("", wordspeed, function(){o_vn.talking = 0}),
new Page("", wordspeed, function(){o_vn.talking = 1}),
new Page("", wordspeed, function(){sum.image_index = sumEmotion.; o_vn.talking = 0}),
new Page("", wordspeed, function(){mam.image_index = mamEmotion.; o_vn.talking = 1}),
new Wait(20,function(){}),
*/

//talking 0 = sum, 1 = mam
],
	onPage:  0,
	onWord: 0,
	onFinish : function(){room = room_danmaku}
}
reading = true;
draw_set_font(ft_ronaldo);
talking = 0;
audio_stop_all();
music = audio_play_sound(m_analogue_mirror, 10, false);
