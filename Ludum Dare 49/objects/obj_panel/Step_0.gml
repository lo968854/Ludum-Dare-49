/// @desc idk lol
if place_meeting (x, y, obj_player) and tileState == 0
{
	audio_play_sound(snd_switch, 1, false);
	tileState = 1;
	with obj_exit
	{
		if (progress + 1) = instance_number(obj_panel)
		{
				audio_play_sound(snd_exit_unlock, 2, false);
		}
		progress += 1;
	}
}