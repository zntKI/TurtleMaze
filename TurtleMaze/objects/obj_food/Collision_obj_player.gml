/// @description Insert description here
// You can write your code in this editor


instance_destroy();

var player = obj_player;

var tilemap = layer_tilemap_get_id(layer_get_id("Tiles_main"));

var spawn_radius_min = 100;
var spawn_radius_max = 300;

var pos_x = irandom_range(0, room_width);
//show_debug_message("PosX: {0}", pos_x);
var pos_y = irandom_range(0, room_height);
//show_debug_message("PosY: {0}", pos_y);

while	(tilemap_get_at_pixel(tilemap, pos_x, pos_y) == 0 ||
		(((player.x - pos_x < spawn_radius_min || player.x - pos_x > spawn_radius_max) && (pos_x - player.x < spawn_radius_min || pos_x - player.x > spawn_radius_max)) ||
		((player.y - pos_y < spawn_radius_min || player.y - pos_y > spawn_radius_max) && (pos_y - player.y < spawn_radius_min || pos_y - player.y > spawn_radius_max))))
{
	pos_x = irandom_range(0, room_width);
	//show_debug_message("PosX: {0}", pos_x);
	pos_y = irandom_range(0, room_height);
	//show_debug_message("PosY: {0}", pos_y);
}

instance_create_layer(pos_x, pos_y, "Instances", obj_food);