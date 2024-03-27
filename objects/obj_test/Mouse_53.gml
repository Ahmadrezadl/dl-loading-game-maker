
// Check if the left mouse button was pressed
if (mouse_check_button_pressed(mb_left)) {
    // Show Loading Button
    if (point_in_rectangle(mouse_x, mouse_y, button_show_loading.x, button_show_loading.y, button_show_loading.x + button_show_loading.width, button_show_loading.y + button_show_loading.height)) {
        show_loading();
    }
    
    // Hide Loading Button
    else if (point_in_rectangle(mouse_x, mouse_y, button_hide_loading.x, button_hide_loading.y, button_hide_loading.x + button_hide_loading.width, button_hide_loading.y + button_hide_loading.height)) {
        hide_loading();
    }
    
    // Decrease Opacity Button
    else if (point_in_rectangle(mouse_x, mouse_y, button_decrease_opacity.x, button_decrease_opacity.y, button_decrease_opacity.x + button_decrease_opacity.width, button_decrease_opacity.y + button_decrease_opacity.height)) {
       set_loading_background_opacity(max(0, global.loading_background_opacity - 0.1));
    }
    
    // Increase Opacity Button
    else if (point_in_rectangle(mouse_x, mouse_y, button_increase_opacity.x, button_increase_opacity.y, button_increase_opacity.x + button_increase_opacity.width, button_increase_opacity.y + button_increase_opacity.height)) {
        set_loading_background_opacity(min(1, global.loading_background_opacity + 0.1));
    }
    
    // Set Random Background Color Button
    else if (point_in_rectangle(mouse_x, mouse_y, button_random_back_color.x, button_random_back_color.y, button_random_back_color.x + button_random_back_color.width, button_random_back_color.y + button_random_back_color.height)) {
		set_loading_background_color(make_color_rgb(irandom(255), irandom(255), irandom(255)));
    }
	
	 // Set Random Sprite Color Button
    else if (point_in_rectangle(mouse_x, mouse_y, button_random_sprite_color.x, button_random_sprite_color.y, button_random_sprite_color.x + button_random_sprite_color.width, button_random_sprite_color.y + button_random_sprite_color.height)) {
		set_loading_sprite_color(make_color_rgb(irandom(255), irandom(255), irandom(255)));
    }
	
	// Increase Animation Speed Button
    else if (point_in_rectangle(mouse_x, mouse_y, button_increase_animation_speed.x, button_increase_animation_speed.y, button_increase_animation_speed.x + button_increase_animation_speed.width, button_increase_animation_speed.y + button_increase_animation_speed.height)) {
		set_loading_animation_speed(global.loading_animation_speed + 1);
    }
	
	// Decrease Animation Speed Button
    else if (point_in_rectangle(mouse_x, mouse_y, button_decrease_animation_speed.x, button_decrease_animation_speed.y, button_decrease_animation_speed.x + button_decrease_animation_speed.width, button_decrease_animation_speed.y + button_decrease_animation_speed.height)) {
		set_loading_animation_speed(global.loading_animation_speed - 1);
    }
	
	// Increase Sprite Scale Button
    else if (point_in_rectangle(mouse_x, mouse_y, button_increase_sprite_scale.x, button_increase_sprite_scale.y, button_increase_sprite_scale.x + button_increase_sprite_scale.width, button_increase_sprite_scale.y + button_increase_sprite_scale.height)) {
		set_loading_sprite_scale(global.loading_sprite_scale + 0.1);
    }
	
	// Decrease Sprite Scale Button
    else if (point_in_rectangle(mouse_x, mouse_y, button_decrease_sprite_scale.x, button_decrease_sprite_scale.y, button_decrease_sprite_scale.x + button_decrease_sprite_scale.width, button_decrease_sprite_scale.y + button_decrease_sprite_scale.height)) {
		set_loading_sprite_scale(global.loading_sprite_scale - 0.1);
    }
}
