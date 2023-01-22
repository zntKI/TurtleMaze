/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_font(fnt_menu);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y, btn_text);
show_debug_message(x);
show_debug_message(y);
show_debug_message("DRAWN!")

draw_set_halign(fa_left);
draw_set_valign(fa_top);