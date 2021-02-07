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
new Page("So, what did you think?", wordspeed, function(){sum.image_index = sumEmotion.Happy; o_vn.talking = 0}),
new Page("", wordspeed, function(){mam.image_index = mamEmotion.Smug; o_vn.talking = 1}),
new Page("", wordspeed, function(){sum.image_index = sumEmotion.Surprised; o_vn.talking = 0}),
new Page("", wordspeed, function(){mam.image_index = mamEmotion.Smug2; o_vn.talking = 1}),
new Page("", wordspeed, function(){sum.image_index = sumEmotion.Confused; o_vn.talking = 0}),
new Page("", wordspeed, function(){sum.image_index = sumEmotion.Happy; o_vn.talking = 0}),
new Page("", wordspeed, function(){o_vn.talking = 0}),


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

