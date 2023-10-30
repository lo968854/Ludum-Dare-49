/// @desc idk lol
idleAlarm--;

if tileState = 1
{
	if idleAlarm > 30
	{
		draw_sprite(spr_panel, 1, x, y);
	}
	if idleAlarm > 15 and idleAlarm <= 30
	{
		draw_sprite(spr_panel, 2, x, y);
	}
		if idleAlarm >= 0 and idleAlarm <= 15
	{
		draw_sprite(spr_panel, 3, x, y);
	}
} else 	draw_sprite(spr_panel, 0, x, y);

if idleAlarm = 0
{
	idleAlarm = 45;
}