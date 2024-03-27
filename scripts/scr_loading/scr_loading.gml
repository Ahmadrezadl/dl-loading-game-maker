#macro CHECK_LOADING if(global.loading_showing) return

global.loading_showing = false;
global.loading_background_color = c_black;
global.loading_background_opacity = 0.5;
global.loading_timeout = -1; // No timeoout
global.loading_hide_time = -1;
global.loading_sprite = spr_default_loading;
global.loading_animation_speed = 30;
global.loading_animation_start_time = -1; // Will store the start time of the animation
global.loading_sprite_scale = 1;
global.loading_sprite_color = c_black;

function set_loading_background_color(color){
	global.loading_background_color = color;
}

function set_loading_background_opacity(opacity){
	global.loading_background_opacity = opacity;
}

function set_loading_timeout(seconds){
	global.loading_timeout = seconds;
}

function set_loading_animation_speed(FPS){
	if global.loading_animation_start_time > 0
		global.loading_animation_start_time = current_time;
	global.loading_animation_speed = FPS;
}

function set_loading_sprite(sprite){
	global.loading_sprite = sprite;
}

function set_loading_sprite_scale(scale){
	global.loading_sprite_scale = scale;
}

function set_loading_sprite_color(color){
	global.loading_sprite_color = color;
}




function show_loading(){
	if not instance_exists(obj_loading)
		instance_create_depth(0,0,0,obj_loading);
	
	global.loading_showing = true;
	if global.loading_timeout > 0
		global.loading_hide_time = current_time + (global.loading_timeout * 1000);
	global.loading_animation_start_time = current_time; // Record start time
}

function hide_loading(){
	global.loading_showing = false;
	global.loading_hide_time = -1;
}