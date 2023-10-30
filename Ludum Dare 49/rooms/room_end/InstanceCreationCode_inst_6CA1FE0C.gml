playerDirection = down;
playerStateNeutral = true;
hasControl = false;

if keyboard_check_pressed(vk_anykey)
{
	room_goto(1);
}