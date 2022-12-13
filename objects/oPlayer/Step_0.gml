/// @description Core PLayer Logic

// Get player inputs
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//Calculate movement
var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,Invisiblewall1)) && (key_jump)
{
	vsp = -jumpsp
}

//Horizontal collision
if (place_meeting(x+hsp,y,Invisiblewall1))
{
	while (!place_meeting(x+sign(hsp),y,Invisiblewall1))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp; 

//Vertical collision
if (place_meeting(x,y+vsp,Invisiblewall1))
{
	while (!place_meeting(x,y+sign(vsp),Invisiblewall1))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp; 

//Animation

if (!place_meeting(x,y+1,Invisiblewall1))
{
	sprite_index=sPlayerA 
	if (vsp > 1.8)
	{
		if (vsp > 2.6) 
		{
		if (vsp > 4.2)
		{
			image_index=7
		}
		else image_index = 6
	}
	else image_index=5
	}
	else 
	{
		if (image_index > 3)
		{
			image_index = 4
		}
	}
}
else
{
	sprite_index = sPlayerW
	image_speed = 1
	if (hsp = 0) and (place_meeting(x,y+1,Invisiblewall1)) 
	{
	sprite_index = sPlayer
	}
}
if (hsp != 0) {
	image_xscale = sign(hsp)
}