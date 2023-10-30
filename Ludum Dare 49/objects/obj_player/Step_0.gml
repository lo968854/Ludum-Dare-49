/// @desc idk lol
//Input
if playerStateNeutral == true hasControl = true else hasControl = false;
if (hasControl)
{
	keyLeft = keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A"));
	keyRight = keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D"));
	keyDown = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
	keyUp = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
}
else
{
	keyLeft = 0;
	keyRight = 0;
	keyDown = 0;
	keyUp = 0;
	keyGlue = 0;
}

//Movement
playerStateMoving = false;
if keyLeft and (!place_meeting(x - tileSize, y, obj_col))
{
	playerStateMoving = true;
	x -= tileSize;
	playerDirection = left;
}

if keyRight and (!place_meeting(x + tileSize, y, obj_col))
{
	playerStateMoving = true;
	x += tileSize;
	playerDirection = right;
}

if keyDown and (!place_meeting(x, y + tileSize, obj_col))
{
	playerStateMoving = true;
	y += tileSize;
	playerDirection = down;
}

if keyUp and (!place_meeting(x, y - tileSize, obj_col))
{
	playerStateMoving = true;
	y -= tileSize;
	playerDirection = up;
}

//Death
if playerStateDying == true
{
	with obj_game tutMessage = 7;
	playerStateNeutral = false;
	if dyingAlarm = 0
	{
		instance_destroy();
	}
}

//Win
if playerStateWin == true
{
	audio_play_sound(snd_win, 2, false);
	playerStateNeutral = false;
	room_goto_next();
}

	//Glue 
//Collect
if place_meeting(x, y, obj_glue)
{
	glueCount += 1;
}

//Glue State. this is so dumb lmao
keyGlue = keyboard_check_pressed(vk_space);

if glueCount > 0 and keyGlue
{
	if playerStateNeutral audio_play_sound(snd_glue_use, 1, false);
	if !playerStateNeutral audio_play_sound(snd_glue_use_bw, 1, false);
	playerStateNeutral = !playerStateNeutral;
	playerStateGlue = !playerStateGlue;
	idleAlarm = 30;
}

if playerStateGlue and glueCount = 0
{
	playerStateGlue = false;
	playerStateNeutral = true;
}

if playerStateGlue
{
	playerStateNeutral = false;
}
