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
	
	if	_left == 1
	{
		var left_top = tilemap_get_at_pixel(tiles, bbox_left - collisionSpeed, bbox_top);
		var left_bot = tilemap_get_at_pixel(tiles, bbox_left - collisionSpeed, bbox_bottom);
		
		if	left_top == 0 && left_bot == 0
		{
			x += _xadd;
		}
	}
	if	_right == 1
	{
		var right_top = tilemap_get_at_pixel(tiles, bbox_right + collisionSpeed, bbox_top);
		var right_bot = tilemap_get_at_pixel(tiles, bbox_right + collisionSpeed, bbox_bottom);
		
		if	right_top == 0 && right_bot == 0
		{
			x += _xadd;
		}
	}
	if	_up == 1
	{
		var up_left = tilemap_get_at_pixel(tiles, bbox_left, bbox_top - collisionSpeed);
		var up_right = tilemap_get_at_pixel(tiles, bbox_right, bbox_top - collisionSpeed);
		
		if	up_left == 0 && up_right == 0
		{
			y += _yadd;
		}
	}
	if	_down == 1
	{
		var down_left = tilemap_get_at_pixel(tiles, bbox_left, bbox_bottom - collisionSpeed);
		var down_right = tilemap_get_at_pixel(tiles, bbox_right, bbox_bottom - collisionSpeed);
		
		if	down_left == 0 && down_right == 0
		{
			y += _yadd;
		}
	}
	
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