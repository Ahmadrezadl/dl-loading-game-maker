if (global.loading_showing) {
    var _alpha = global.loading_background_opacity;
    draw_set_alpha(_alpha);
    draw_set_color(global.loading_background_color);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
    draw_set_alpha(1);
	
	
	var elapsed_time = current_time - global.loading_animation_start_time;
    var animation_length = sprite_get_number(global.loading_sprite) / global.loading_animation_speed;
    var current_frame = floor((elapsed_time / 1000) % animation_length * global.loading_animation_speed);
	var _spr_width = sprite_get_width(global.loading_sprite);
    var _spr_height = sprite_get_height(global.loading_sprite);
    var _x = (display_get_gui_width()) / 2;
    var _y = (display_get_gui_height()) / 2;
	var _scale = global.loading_sprite_scale;

    draw_sprite_ext(global.loading_sprite, current_frame, _x, _y, _scale, _scale, 0, global.loading_sprite_color, 1);
}
