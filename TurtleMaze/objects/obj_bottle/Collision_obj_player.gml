/// @description Insert description here
// You can write your code in this editor

instance_destroy();

var player = obj_player;
if	(player.player_health < player.player_max_health)
{
	player.player_health++;
	player.alarm[0] = player.time_damage;
}