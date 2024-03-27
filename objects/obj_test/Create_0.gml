// Show Loading Button
button_show_loading = { x: 10, y: 10, width: 150, height: 30, text: "Show Loading" };

// Hide Loading Button
button_hide_loading = { x: 10, y: 50, width: 150, height: 30, text: "Hide Loading" };

// Decrease Opacity Button
button_decrease_opacity = { x: 10, y: 90, width: 150, height: 30, text: "-Back Opacity" };

// Increase Opacity Button
button_increase_opacity = { x: 180, y: 90, width: 150, height: 30, text: "+Back Opacity" };

// Set Random Background Color Button
button_random_back_color = { x: 10, y: 130, width: 150, height: 30, text: "Rnd Back Color" };

// Set Random Background Color Button
button_random_sprite_color = { x: 180, y: 130, width: 150, height: 30, text: "Rnd Spr Color" };

// Increase Animation Speed
button_increase_animation_speed = { x: 180, y: 170, width: 150, height: 30, text: "+Animation Speed" };

// Decrease Animation Speed
button_decrease_animation_speed = { x: 10, y: 170, width: 150, height: 30, text: "-Animation Speed" };

// Decrease Sprite Scale
button_decrease_sprite_scale = { x: 10, y: 220, width: 150, height: 30, text: "-Sprite Scale" };
// Increase Sprite Scale
button_increase_sprite_scale = { x: 180, y: 220, width: 150, height: 30, text: "+Sprite Scale" };


// Function to draw buttons
function draw_test_button(button) {
    draw_set_color(c_black);
    draw_rectangle(button.x, button.y, button.x + button.width, button.y + button.height, false);
	draw_set_color(c_white);
    draw_text(button.x + button.width / 2, button.y + button.height / 2, button.text);
};

