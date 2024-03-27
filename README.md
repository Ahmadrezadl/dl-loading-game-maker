
# DL_Loading Library

The DL_Loading library provides [GameMaker](https://gamemaker.io) developers with a versatile and customizable loading screen feature. This library enables the customization of the loading screen's background color, opacity, sprite, and animation speed, making the loading process visually appealing and consistent with the game's theme.

## Features

Customize loading screen with sample project

![Gif](https://github.com/Ahmadrezadl/dl-loading-game-maker/blob/main/features.gif)

## Installation

1. Go to the [Releases](https://github.com/Ahmadrezadl/dl-loading-game-maker/releases) section of this GitHub repository.
2. Download the latest `DL_Loading.yyz` file.
3. Import the `.yyz` file into your GameMaker Studio 2 project using the GameMaker Studio IDE.

---

## Example Usage

```gml
// Set the background color of the loading screen to a semi-transparent white (Default: Opacity: 0.5, Backgorund Color: c_black)
set_loading_background_color(c_white);
set_loading_background_opacity(0.25);

// Set a 10-second timeout for the loading screen, after which it will automatically hide (Default: -1, no timeout)
set_loading_timeout(10);

// Adjust the loading animation's speed to 60 frames per second (Default: 30)
set_loading_animation_speed(30);

// Change the sprite used for the loading animation to your custom sprite (Default: spr_default_loading)
set_loading_sprite(spr_custom_loading); // Ensure 'spr_custom_loading' is defined in your project

// Scale the loading animation sprite to be twice its original size (Default: 1)
set_loading_sprite_scale(2);

// Change the color of the loading sprite to red (Default: c_white)
set_loading_sprite_color(c_red);

// To display the loading screen, typically at the start of a heavy loading process (like downloading a file)
show_loading();

// After the loading process is complete, or when you want to manually hide the loading screen
// This could be after an asynchronous operation, a timer, or an event
hide_loading();

```

Additionally, if you have events or sections of code that should not execute while the loading screen is visible, use the `CHECK_LOADING` macro at the beginning of those code blocks:

```gml
// At the beginning of an event or code block
CHECK_LOADING; // This will exit the event if the loading screen is currently showing
```


## Example Project

Check the `DL_Loading_Sample` folder for examples and a demo room showing how to integrate and use the DL_Loading library effectively in your GameMaker projects.

## Contributing

We welcome contributions, bug reports, and feature requests. Feel free to open an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

