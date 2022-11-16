/// @description Core PLayer Logic

// Get player inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//Calculate movement
var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

//Vertical collision
if (place_meeting(x+hsp,y+vsp,Invisiblewall1))
{
	while (!place_meeting(x),y+sign(vsp),Invisiblewall1))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp; 