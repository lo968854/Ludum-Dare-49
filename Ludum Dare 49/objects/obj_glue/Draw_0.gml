/// @desc idk lol
idleAlarm--;


if (idleAlarm > 45) or (idleAlarm > 15 and idleAlarm <= 30)
{
	draw_sprite(spr_glue, 0, x, y);
}
if idleAlarm > 30 and idleAlarm <= 45
{
	draw_sprite(spr_glue, 1, x, y);
}
	if idleAlarm >= 0 and idleAlarm <= 15
{
	draw_sprite(spr_glue, 2, x, y);
}

if idleAlarm = 0
{
	idleAlarm = 60;
}