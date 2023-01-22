/// @description Insert description here
// You can write your code in this editor


var xoffset = 36;

for	(var i = 0; i < player_health; i++)
{
	draw_sprite_ext(spr_heart, 0, 1500 + (xoffset * i), 30, 2, 2, 0, c_white, 1);
}