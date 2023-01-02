/// @description Insert description here
// You can write your code in this editor


var _left = keyboard_check(ord("A"));
var _right = keyboard_check(ord("D"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));
var _hspd = _right - _left;
var _vspd = _down - _up;

if (_hspd != 0 || _vspd != 0)
{
    var _dir = point_direction(0, 0, _hspd, _vspd);
    var _xadd = lengthdir_x(walkSpeed, _dir);
    var _yadd = lengthdir_y(walkSpeed, _dir);
    x += _xadd;
    y += _yadd;
	
	image_speed = walkSpeed * 1.5;
	
	if	keyboard_check(ord("D"))
	{
		sprite_index = spr_player_right_move;
	}
	if	keyboard_check(ord("A"))
	{
		sprite_index = spr_player_left_move;
	}
	if	keyboard_check(ord("S"))
	{
		sprite_index = spr_player_front_move;
	}
	if	keyboard_check(ord("W"))
	{
		sprite_index = spr_player_back_move;
	}
}


if	keyboard_check(vk_nokey)
{
	image_speed = walkSpeed * 0.7;
		
	if	sprite_index == spr_player_right_move
	{
		sprite_index = spr_player_right_still;
	}
	if	sprite_index == spr_player_left_move
	{
		sprite_index = spr_player_left_still;
	}
	if	sprite_index == spr_player_front_move
	{
		sprite_index = spr_player_front_still;
	}
	if	sprite_index == spr_player_back_move
	{
		sprite_index = spr_player_back_still;
	}
}