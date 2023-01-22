/// @description Insert description here
// You can write your code in this editor

if !surface_exists(surf)
    {
    var _cw = camera_get_view_width(view_camera[1]);
    var _ch = camera_get_view_height(view_camera[1]);
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
var _cw = camera_get_view_width(view_camera[1]);
var _ch = camera_get_view_height(view_camera[1]);
var _cx = camera_get_view_x(view_camera[1]);
var _cy = camera_get_view_y(view_camera[1]);
surface_set_target(surf);
draw_set_color(c_black);
draw_rectangle(0, 0, _cw, _ch, 0);
gpu_set_blendmode(bm_subtract);
var scale_player_sprite = 3 + 0.125 * sin(current_time / 150);
var scale_basic_sprite = 1 + 0.125 * sin(current_time / 150);
with (obj_player)
    {
		draw_sprite_ext(spr_light, 0, self.x, self.y, scale_basic_sprite, scale_basic_sprite, 0, c_white, 1);
    }
with (obj_exit)
{
	draw_sprite_ext(spr_light, 0, self.x, self.y, scale_basic_sprite + 1, scale_basic_sprite + 1, 0, c_white, 1);
}
with (obj_food)
{
	draw_sprite_ext(spr_light, 0, self.x, self.y, scale_basic_sprite + 1, scale_basic_sprite + 1, 0, c_white, 1);
}
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);
surface_reset_target();
draw_surface(surf, _cx, _cy);
}
}