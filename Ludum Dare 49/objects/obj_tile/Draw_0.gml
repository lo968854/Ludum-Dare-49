/// @desc idk lol
idleAlarm--
draw_sprite(spr_tile, tileState, x, y);

if selected = true
{
	if idleAlarm > 0
	{
		
		draw_sprite(spr_glueCursor, 0, x, y);
	} else draw_sprite(spr_glueCursor, 1, x, y);
}

if idleAlarm = -30
{
	idleAlarm = 30;
}