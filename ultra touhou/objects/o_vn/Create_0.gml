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
enum mamEmotion{
	Curious1 = 5,
	Curious2 = 4,
	Disappointed = 3,
	HappySmug = 2,
	Happy = 1,
	Disappointed2 = 0
}
enum sumEmotion{
	Confused = 6,
	Disappointed  =5,
	Excited = 4,
	Happy = 3,
	Happy2 = 2,
	Smug = 1,
	Surprised = 0
}
var wordspeed = 30;
vn = {
	pages : 	 [new Wait(0,function(){mam.visible = false; sum.image_index = sumEmotion.Confused}),
new Page("Gee, it sure is boring around here...", wordspeed, function(){}),
new Wait(70,function(){}),
new Page("Is this the supposed peace all busy students should strive for?", wordspeed, function(){sum.image_index = sumEmotion.Smug}),
new Page("I just wonder what the youkai are up to...", wordspeed, function(){}),
new Wait(70,function(){sum.image_index = sumEmotion.Surprised}),
new Page("Oh!", wordspeed, function(){mam.image_xscale = -2; mam.visible = true; mam.image_alpha = 0; makeSoulless(function(){mam.image_alpha+=0.01;},"mamAppear");}),
new Wait(100,function(){mam.image_alpha = 1; destroySoulless("mamAppear");}),
new Wait(70,function(){}),
],
	onPage:  0,
	onWord: 0,
	onFinish : function(){room = room_danmaku}
}
reading = true;
draw_set_font(ft_ronaldo)
talking = 0;

