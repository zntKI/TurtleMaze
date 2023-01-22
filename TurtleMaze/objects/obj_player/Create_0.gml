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
time_damage = 60;
alarm[0] = time_damage;

//var tilemap = layer_tilemap_get_id(layer_get_id("Tiles_main"));
//
//var spawn_radius = 150;
//
//var pos_x = irandom_range(0, room_width);
//var pos_y = irandom_range(0, room_height);
//
//while	(tilemap_get_at_pixel(tilemap, pos_x, pos_y) == 0 ||
//		(pos_x < self.x - spawn_radius || pos_x > self.x + spawn_radius) ||
//		(pos_y < self.y - spawn_radius || pos_y > self.y + spawn_radius))
//{
//	pos_x = irandom_range(0, room_width);
//	pos_y = irandom_range(0, room_height);
//}
//
//instance_create_layer(pos_x, pos_y, "Instances", obj_food);