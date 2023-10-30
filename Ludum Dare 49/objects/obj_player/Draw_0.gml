/// @desc idk lol
if playerStateNeutral = true
{
	idleAlarm--;
	
	if idleAlarm > 0
	{
		draw_sprite(spr_player, playerDirection, x, y);
	} else draw_sprite(spr_player, playerDirection + 1, x, y);
	
	if idleAlarm = -30
	{
		idleAlarm = 30;
	}
} else idleAlarm = -31;
	//i know this is stupid. i dont care. im running out of time

if playerStateDying = true
{
	dyingAlarm--
	if dyingAlarm > 50 draw_sprite(spr_player, 9, x, y);
	if dyingAlarm > 40 and dyingAlarm <= 50 draw_sprite(spr_player, 10, x, y);
	if dyingAlarm > 30 and dyingAlarm <= 40 draw_sprite(spr_player, 11, x, y);
	if dyingAlarm > 20 and dyingAlarm <= 30 draw_sprite(spr_player, 12, x, y);
	if dyingAlarm > 10 and dyingAlarm <= 20 draw_sprite(spr_player, 13, x, y);
	if dyingAlarm > 0 and dyingAlarm <= 10 draw_sprite(spr_player, 14, x, y);
}

if playerStateGlue = true
{
	draw_sprite(spr_player, 8, x, y);
	draw_sprite(spr_glue, 0, x, y - 14);
}