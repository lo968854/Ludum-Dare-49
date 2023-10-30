/// @desc idk lol
image_index = tileState;

if place_meeting (x, y, obj_player) and obj_player.playerStateMoving == true and tileState < 3
{
	audio_play_sound(snd_step, 1, false);
	tileState += 1;
	with obj_player
	{
		if other.tileState == 2
		{
			playerStateDying = true;
			audio_play_sound(snd_death, 1, false);
		}
	}
}

with obj_player
{
	if playerStateGlue == true
	{
		if (mouse_x == clamp(mouse_x, other.bbox_left, other.bbox_right) && mouse_y == clamp(mouse_y, other.bbox_top, other.bbox_bottom))
		{
			other.selected = true;
		} else other.selected = false;
	} else other.selected = false;
}

if selected == true and tileState != 3
{
	if mouse_check_button_pressed(mb_left)
	{
		audio_play_sound(snd_glue, 1, false);
		tileState = 3;
		with obj_player
		{
			if glueCount - 1 <= 0
			{
				playerStateGlue = false;
				playerStateNeutral = true;
				idleAlarm = 30;
			}
			glueCount -= 1;
		}
	}
}