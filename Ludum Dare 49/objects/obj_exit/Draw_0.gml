/// @desc idk lol
idleAlarm--;

if tileState = 1
{
	if idleAlarm > 0
	{
		draw_sprite(spr_exit, 1, x, y);
	} else draw_sprite(spr_exit, 2, x, y);
} else draw_sprite(spr_exit, 0, x, y);

if idleAlarm = -15
{
	idleAlarm = 15;
}