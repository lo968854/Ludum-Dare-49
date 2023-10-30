/// @desc idk lol
draw_set_font(font_default)
position = animcurve_channel_evaluate(curve, percent);

var _start = -16;
var _end = 32;
var _distance = _end - _start;
var _curve = (_start + (_distance * position));

with obj_player
{
	if glueCount > 0
	{
		other.percent += 1/30;
		draw_sprite(spr_glue, 0, (room_width - 64), _curve);
		draw_text((room_width - 48) + 5, _curve-10, "X");
		draw_text((room_width - 34), _curve-10, glueCount);
	}
	if glueCount = 0
	{
		draw_sprite(spr_glue, 0, (room_width - 64), _curve);
		draw_text((room_width - 48) + 5, _curve-10, "X");
		draw_text((room_width - 34), _curve-10, glueCount);
	}
}

//Tutorial Message
if tutMessage != -1
{
	draw_sprite(spr_tut_text, tutMessage, 0, 0);
}

//Level 5 tutorial message because nothing can be simple
if level5 = true
{
	with obj_player
	{
		other.tutMessage = 2;
		if glueCount = 1
		{
			other.tutMessage = 3;
		}
		if playerStateGlue
		{
			other.tutMessage = 4;
		}
		if inst_4C0A20EC.tileState = 3
		{
			other.tutMessage = 5;
		}
	}
}