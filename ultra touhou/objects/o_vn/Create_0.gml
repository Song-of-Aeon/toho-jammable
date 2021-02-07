/// @description Insert description here
draw_set_font(ft_yeah);
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
enum mamEmotion {
	Sans = 0,
	Smug2 = 1,
	Smug = 2,
	Confused = 3,
	Mild = 4,
	Neutral = 6
}
enum sumEmotion {
	Surprised = 0,
	Smug2 = 1,
	Smug = 2,
	i_didnt_use_this_one = 3,
	Happy = 4,
	Disappointed = 5,
	Confused = 6
}
var wordspeed = 90;
vn = {
	pages : 	 [new Wait(0,function(){}),
new Page("Gee, it sure is boring around here...", wordspeed, function(){mam.visible = false; sum.image_index = sumEmotion.Confused}),
new Wait(70,function(){}),
new Page("Is this the supposed peace all busy students should strive for?", wordspeed, function(){}),
new Page("I just wonder what my friends in Gensokyo are up to...", wordspeed, function(){sum.image_index = sumEmotion.Smug}),
new Wait(70,function(){}),


new Page("Oh!", wordspeed, function(){mam.image_xscale = 2; mam.visible = true; mam.image_alpha = 0; sum.image_index = sumEmotion.Surprised; makeSoulless(function(){mam.image_alpha+=0.02;},"mamAppear");}),
new Wait(50,function(){mam.image_alpha = 1; destroySoulless("mamAppear");}),
new Wait(20,function(){}),
new Page("That person...", wordspeed, function(){}),
new Wait(20,function(){}),
new Page("She's one of the youkai who tried to stop me from entering Gensokyo, isn't she?", wordspeed, function(){}),
new Page("I wonder why she's here...?", wordspeed, function(){sum.image_index = sumEmotion.Confused}),
new Wait(20,function(){}),

new Page("Could it be!?\nThe youkai had been infiltrating Earth this whole time!?", wordspeed, function(){sum.image_index = sumEmotion.Surprised}),
new Page("...Doesn't involve me, though.\nI can hold my own against them if I have to.", wordspeed, function(){sum.image_index = sumEmotion.Smug}),
new Page("I'll just say hi.", wordspeed, function(){sum.image_index = sumEmotion.Smug2}),
new Wait(70,function(){}),

//move toward center
new Page("Hiiiii!", wordspeed, function(){sum.image_index = sumEmotion.Happy}),
new Page("!", wordspeed, function(){mam.image_index = mamEmotion.Mild; mam.image_xscale = -2; o_vn.talking = 1}),
new Page("Uh, yes?", wordspeed, function(){mam.image_index = mamEmotion.Smug}),
new Page("Don't act nonchalant!\nYou can't fool me, Ms. tanuki!", wordspeed, function(){sum.image_index = sumEmotion.Smug2; o_vn.talking = 0}),
new Page("...", wordspeed, function(){o_vn.talking = 1}),
new Wait(20,function(){}),
//sum and mam reposition
new Page("Nothin' to be done about it.", wordspeed, function(){mam.image_index = mamEmotion.Sans}),
new Page("Couldja at least try to use my name, high-school girl?", wordspeed, function(){}),
new Page("I can't use what I don't have. And for the record, I-", wordspeed, function(){sum.image_index = sumEmotion.Confused; o_vn.talking = 0}),
new Page("Just a joke. Sumireko, isn't it?", wordspeed, function(){mam.image_index = mamEmotion.Smug; o_vn.talking = 1}),
new Page("Mamizou Futatsuiwa here. Pleasure to meetcha proper.", wordspeed, function(){}),
new Page("I'm not sure I want to hear that from someone who tried to kill me...", wordspeed, function(){sum.image_index = sumEmotion.Disappointed; o_vn.talking = 0}),
new Page("Ah, hogwash. That's just danmaku play.", wordspeed, function(){mam.image_index = mamEmotion.Smug; o_vn.talking = 1}),
new Page("Made it out in the end anyway, didn'tcha?", wordspeed, function(){mam.image_index = mamEmotion.Sans}),
new Page("You approached me today. Got something to say?", wordspeed, function(){mam.image_index = mamEmotion.Neutral}),
new Page("Hm... not in particular.", wordspeed, function(){sum.image_index = sumEmotion.Happy; o_vn.talking = 0}),
new Page("I just remembered you asked for a tour of the outside world during that incident, though.", wordspeed, function(){}),
new Page("Care to join me for a bit of modern entertainment?", wordspeed, function(){sum.image_index = sumEmotion.Smug}),

new Page("I got this impression before, but...", wordspeed, function(){o_vn.talking = 1}),
new Wait(20,function(){}),
new Page("You really are careless, aren'tcha?", wordspeed, function(){}),
new Page("I'll take that offer.\nI was just peeking around for a friend, anyway,", wordspeed, function(){mam.image_index = mamEmotion.Smug}),
new Page("Wonderful!", wordspeed, function(){sum.image_index = sumEmotion.Smug2; o_vn.talking = 0}),


new Page("So, where are we going?", wordspeed, function(){mam.image_index = mamEmotion.Neutral; o_vn.talking = 1}),
new Page("Let me check what's around on my phone.", wordspeed, function(){sum.image_index = sumEmotion.Confused; o_vn.talking = 0}),
new Page("Can'tcha just look?", wordspeed, function(){mam.image_index = mamEmotion.Confused; o_vn.talking = 1}),
new Page("No, no...", wordspeed, function(){o_vn.talking = 0}),
new Page("Ah, this should do!", wordspeed, function(){sum.image_index = sumEmotion.Happy}),
new Page("How does an arcade sound?", wordspeed, function(){}),
new Page("Never heard of 'em. Sounds great.", wordspeed, function(){mam.image_index = mamEmotion.Smug; o_vn.talking = 1}),
new Wait(0,function(){makeSoulless(function(){var lay_id = layer_get_id("Background");var back_id = layer_background_get_id(lay_id);layer_background_alpha(back_id, layer_background_get_alpha(back_id)-0.01);},"gotoArcade");}),
new Wait(150,function(){}),

new Page("Here we are, the arcade.", wordspeed, function(){sum.image_index = sumEmotion.Smug; o_vn.talking = 0; destroySoulless("gotoArcade"); var lay_id = layer_get_id("Background");var back_id = layer_background_get_id(lay_id);layer_background_alpha(back_id, 0);}),
new Page("A wonderful display of the degeneration of art this society seeks,\nthe very epitome of meaningless and transient interactions,\nthe place it would not be wrong to call-", wordspeed, function(){sum.image_index = sumEmotion.Smug2}),
new Page("Uh do you even want to be here?", wordspeed, function(){mam.image_index = mamEmotion.Confused; o_vn.talking = 1}),
new Page("Well, it's fun sometimes.", wordspeed, function(){sum.image_index = sumEmotion.Happy; o_vn.talking = 0}),

new Page("What do we do here?", wordspeed, function(){mam.image_index = mamEmotion.Neutral; o_vn.talking = 1; }),
new Page("To explain it to an ancient youkai...", wordspeed, function(){mam.image_index = mamEmotion.Confused; o_vn.talking = 0}),
new Page("Essentially, each of these unmanned stands hold a different game.", wordspeed, function(){sum.image_index = sumEmotion.Happy}),
new Page("Most of them are solitaire, but all of them are competetive element.", wordspeed, function(){}),
new Page("\"Do better than your friend\" and the like.", wordspeed, function(){}),
new Page("'Zat so?", wordspeed, function(){mam.image_index = mamEmotion.Mild; o_vn.talking = 1}),
new Page("If danmaku's a game, you could say I'm pretty good at them.", wordspeed, function(){mam.image_index = mamEmotion.Smug2}),
new Page("Oh, I think they have one like that here, too.", wordspeed, function(){sum.image_index = sumEmotion.Surprised; o_vn.talking = 0}),
new Page("I mean, not like it is in Gensokyo, but...", wordspeed, function(){sum.image_index = sumEmotion.Confused}),
new Wait(20,function(){}),
new Page("Whatever. Just follow me!", wordspeed, function(){sum.image_index = sumEmotion.Smug}),
new Page("Best 2 out of 3 games wins!", wordspeed, function(){}),
new Wait(20,function(){room = room_danmaku})





/*new Page("", wordspeed, function(){}),
new Page("", wordspeed, function(){sum.image_index = sumEmotion.; o_vn.talking = 0}),
new Page("", wordspeed, function(){mam.image_index = mamEmotion.; o_vn.talking = 1}),
new Wait(20,function(){}),*/

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
