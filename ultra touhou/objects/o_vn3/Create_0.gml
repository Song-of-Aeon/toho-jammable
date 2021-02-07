/// @description Insert description here
// You can write your code in this editor
draw_set_font(ft_yeah);
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
new Page("You aren't bad at all.", wordspeed, function(){sum.image_index = sumEmotion.Smug; o_vn3.talking = 0}),
new Page("I wonder how much of that is just because of\nyour biology, though.", wordspeed, function(){ o_vn3.talking = 0}),
new Page("Don't worry about that.", wordspeed, function(){mam.image_index = mamEmotion.Smug; o_vn3.talking = 1}),
new Page("By the way, what does the winner get?", wordspeed, function(){mam.image_index = mamEmotion.Neutral; o_vn3.talking = 1}),
new Page("Of your \"2 out of 3\"?", wordspeed, function(){o_vn3.talking = 1}),
new Page("I said that, but...", wordspeed, function(){sum.image_index = sumEmotion.Confused; o_vn3.talking = 0}),
new Page("Just so you know, I won't accept anything from\na tanuki anymore, even if I win.", wordspeed, function(){sum.image_index = sumEmotion.Disappointed; o_vn3.talking = 0}),
new Page("Ah, what a frightened human.\nA sight for sore eyes.", wordspeed, function(){mam.image_index = mamEmotion.Smug2; o_vn3.talking = 1}),
new Page("But if you win-", wordspeed, function(){sum.image_index = sumEmotion.Happy; o_vn3.talking = 0}),
new Page("Nah.", wordspeed, function(){mam.image_index = mamEmotion.Sans; o_vn3.talking = 1}),
new Page("Nah?", wordspeed, function(){sum.image_index = sumEmotion.Surprised; o_vn3.talking = 0}),
new Page("Meaningless games are fine by me.\nNothing you could give me that I couldn't\nget myself, anyway.", wordspeed, function(){mam.image_index = mamEmotion.Smug; o_vn3.talking = 1}),
new Page("Very well.", wordspeed, function(){sum.image_index = sumEmotion.Smug; o_vn3.talking = 0}),
new Page("Next game is a...", wordspeed, function(){o_vn3.talking = 0}),
new Page("Wait, do you know what a car is?", wordspeed, function(){sum.image_index = sumEmotion.Confused; o_vn3.talking = 0}),
new Page("Wheels, metal, moves. That about right?", wordspeed, function(){o_vn3.talking = 1}),
new Page("That's probably enough.\nThe game is a race using cars.", wordspeed, function(){o_vn3.talking = 0}),
new Page("Now that I've flown, they kind of seem useless, though.\nCars, that is.", wordspeed, function(){sum.image_index = sumEmotion.Smug2; o_vn3.talking = 0}),
new Page("Humans shouldn't get too used to leaving the ground.\nEventually, you won't be able to know it again until your death.", wordspeed, function(){mam.image_index = mamEmotion.Smug2; o_vn3.talking = 1}),
new Page("What is that supposed to be about, Icarus?\nI know my limits.", wordspeed, function(){sum.image_index = sumEmotion.Confused; o_vn3.talking = 0}),
new Page("Then on with the games.", wordspeed, function(){mam.image_index = mamEmotion.Sans; o_vn3.talking = 1}),
new Wait(200,function(){instance_create(0,0,Object44).sprite_index = car79}),
new Wait(20,function(){room = room_racer; surface_free(application_surface)})





/*
new Page("", wordspeed, function(){o_vn33.talking = 0}),
new Page("", wordspeed, function(){o_vn3.talking = 1}),
new Page("", wordspeed, function(){sum.image_index = sumEmotion.; o_vn3.talking = 0}),
new Page("", wordspeed, function(){mam.image_index = mamEmotion.; o_vn3.talking = 1}),
new Wait(20,function(){}),
*/

//talking 0 = sum, 1 = mam
],
	onPage:  0,
	onWord: 0,
	onFinish : function(){room = room_danmaku}
}
reading = true;

talking = 0;

audio_stop_all();
music = audio_play_sound(m_outside_conundrum, 10, false);