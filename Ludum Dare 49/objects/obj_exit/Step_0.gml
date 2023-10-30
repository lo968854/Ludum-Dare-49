/// @desc idk lol
if progress = instance_number(obj_panel)
{
	tileState = 1;
}

if tileState = 1 and place_meeting(x, y, obj_player)
{
	with obj_player
	{
		playerStateWin = true;
	}
}