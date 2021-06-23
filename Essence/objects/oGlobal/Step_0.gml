// Check for inputs from all possible gamepads, assign to players
for (i = 0; i < 8; i++) {
	// If gamepad makes an input, and no player struct has claimed that gamepad,
	// enter this conditional
	if (checkInputs(i) &&
		global.PLAYER_1.inputID != i &&
		global.PLAYER_2.inputID != i &&
		global.PLAYER_3.inputID != i &&
		global.PLAYER_4.inputID != i) {

		// Determine player number (0 - 3) based on controller position in OS
		arrayPosition = (i < 4) ? i : i - 4;
		
		// Pass gamepad ID to player struct
		global.PLAYERS[arrayPosition].inputID = i;
		
		// Store position of "ghost" controller in menu, then delete it
		oldController = global.PLAYERS[arrayPosition].controlObj;
		setX = oldController.x;
		setY = oldController.y;
		instance_destroy(oldController);

		// Create an "active" controller at the ghost's position, pass instance ID
		// to player struct
		newController = instance_create_layer(setX,setY,"Players_Layer",oController);
		global.PLAYERS[arrayPosition].controlObj = newController;

		// Pass initial values into controller object
		with (newController) {
			startingX = other.setX;
			startingY = other.setY;
			
			inputID = other.i;
			player = global.PLAYERS[other.arrayPosition];
			gamepad_set_axis_deadzone(inputID, 0.4);
			sprite_index = spritesArray[other.arrayPosition];
		}
	}	
}

// DEBUG MODE ONLY: Restart game
if (keyboard_check(ord("R"))) game_restart();