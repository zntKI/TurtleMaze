/// @description Insert description here
// You can write your code in this editor

randomize()

image_speed = 0;
walkSpeed = 1;

collisionSpeed = walkSpeed + 2;
layerId = layer_get_id("Tiles_Walls");
tiles = layer_tilemap_get_id(layerId);

player_health = 5;
player_max_health = 5;
time_damage = 60 * 10 * 2;
alarm[0] = time_damage;