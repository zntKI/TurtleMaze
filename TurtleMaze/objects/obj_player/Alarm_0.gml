/// @description Insert description here
// You can write your code in this editor


if	player_health == 1
{
	room_goto(rm_end);
}
else
{
	var tilemap = layer_tilemap_get_id(layer_get_id("Tiles_main"));

	var spawn_radius_min = 100;
	var spawn_radius_max = 300;
	
	var pos_x = irandom_range(0, room_width);
	//show_debug_message("PosX: {0}", pos_x);
	var pos_y = irandom_range(0, room_height);
	//show_debug_message("PosY: {0}", pos_y);
	
	while	(tilemap_get_at_pixel(tilemap, pos_x, pos_y) == 0 ||
			(((self.x - pos_x < spawn_radius_min || self.x - pos_x > spawn_radius_max) && (pos_x - self.x < spawn_radius_min || pos_x - self.x > spawn_radius_max)) ||
			((self.y - pos_y < spawn_radius_min || self.y - pos_y > spawn_radius_max) && (pos_y - self.y < spawn_radius_min || pos_y - self.y > spawn_radius_max))))
	{
		pos_x = irandom_range(0, room_width);
		//show_debug_message("PosX: {0}", pos_x);
		pos_y = irandom_range(0, room_height);
		//show_debug_message("PosY: {0}", pos_y);
	}
	
	var num = irandom_range(1, 3);
	
	if (num == 1) {
	    instance_create_layer(pos_x, pos_y, "Instances_Items", obj_bottle);
	}
	else if (num == 2) {
	    instance_create_layer(pos_x, pos_y, "Instances_Items", obj_can);
	}
	else {
		instance_create_layer(pos_x, pos_y, "Instances_Items", obj_bag);
	}
	
	player_health -= 1;
	alarm_set(0, time_damage);
}