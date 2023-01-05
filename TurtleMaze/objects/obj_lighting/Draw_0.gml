/// @description Insert description here
// You can write your code in this editor

if !surface_exists(surf)
    {
    var _cw = camera_get_view_width(view_camera[0]);
    var _ch = camera_get_view_height(view_camera[0]);
    surf = surface_create(_cw, _ch);
    surface_set_target(surf);
    draw_set_colour(c_black);
    draw_set_alpha(0);
    draw_rectangle(0, 0, _cw, _cw, false);
    surface_reset_target();
    }
else
{
if (surface_exists(surf)) {
var _cw = camera_get_view_width(view_camera[0]);
var _ch = camera_get_view_height(view_camera[0]);
var _cx = camera_get_view_x(view_camera[0]);
var _cy = camera_get_view_y(view_camera[0]);
surface_set_target(surf);
draw_set_color(c_black);
draw_rectangle(0, 0, _cw, _ch, 0);
gpu_set_blendmode(bm_subtract);
var scale_player_sprite = 3 + 0.125 * sin(current_time / 150);
var scale_exit_sprite = 1 + 0.125 * sin(current_time / 150);
with (obj_player)
    {
		var coor_x = 0;
		var coor_y = 0;
		
		show_debug_message("Y: {0}", _cy);
		show_debug_message("X: {0}", _cx);
		show_debug_message("SelfY: {0}", self.y);
		show_debug_message("SelfX: {0}", self.x);
		show_debug_message("Height: {0}", _ch);
		show_debug_message("RoomHeight: {0}; CY + CH = {1}", room_height, _cy + _ch)
		
		if	_cx == 0 && _cy == 0
		{
			coor_x = self.x;
			coor_y = self.y;
		}
		else if _cx == 0 || (_cx + _cw == room_width)
		{
			coor_y = self.y - _cy;
			coor_x = self.x - _cx;
		}
		else if _cy == 0 || (_cy + _ch == room_height)
		{
			show_debug_message("YES")
			coor_x = self.x - _cx;
			coor_y = self.y - _cy;
		}
		else
		{
			coor_x = _cw/2;
			coor_y = _ch/2;
		}
		
		show_debug_message("CoorY: {0}", coor_y);
		show_debug_message("CoorX: {0}", coor_x);
		draw_sprite_ext(spr_light, 0, coor_x, coor_y, scale_player_sprite + 1, scale_player_sprite, 0, c_white, 1);
    }
with (obj_exit)
{
	draw_sprite_ext(spr_light, 0, self.x, self.y, scale_exit_sprite, scale_exit_sprite, 0, c_white, 1);
}
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);
surface_reset_target();
draw_surface(surf, _cx, _cy);
}
}