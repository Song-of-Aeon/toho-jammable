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
	
vn = {
	pages : 	 [new Page("trolled XD", 30, function(){makeSoulless(function(){show_debug_message("poggers")},"test")}),
						new Wait(70,function(){removeSoulless("test")}),
						new Page("rofl owned loser", 30, function(){})],
	onPage:  0,
	onWord: 0,
	onFinish : function(){room = fantasy_heaven}
}
reading = true;
draw_set_font(ft_ronaldo)

