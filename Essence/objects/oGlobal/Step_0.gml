// If there are player slots yet to be assigned, scan for inputs and perform setup
if (!playersAssigned()) {
	// Check for inputs from all possible gamepads
	for (i = 0; i < 8; i++) {
		// If gamepad makes an input, and no player struct has claimed that gamepad,
		// progress setting up this controller
		if (checkInputs(i) &&
			global.PLAYER_1.inputID != i &&
			global.PLAYER_2.inputID != i &&
			global.PLAYER_3.inputID != i &&
			global.PLAYER_4.inputID != i) {
		
			// Assign first available player number (position in PLAYERS array)
			for (j = 0; j < 4; j++) {
				if (global.PLAYERS[j].inputID == -1) {
					arrayPosition = j;
					break;
				}
			}
		
			// Pass this inputID to associated player
			global.PLAYERS[arrayPosition].inputID = i;
			
			// Pass player number to player struct
			global.PLAYERS[arrayPosition].playerNumber = arrayPosition + 1;

			// Store position of "ghost" controller in menu, then delete it
			oldController = global.PLAYERS[arrayPosition].controlObj;
			setX = oldController.x;
			setY = oldController.y;
			instance_destroy(oldController);

			// Create an "active" controller at the ghost's position, pass instance ID
			// to player struct
			newController = instance_create_layer(setX,setY,"Players_Layer",oController);
			global.PLAYERS[arrayPosition].controlObj = newController;
			
			// If player is using a PS5 DualSense, remap face buttons
			if (gamepad_get_description(i) == "Wireless Controller") {
				global.PLAYERS[arrayPosition].faceTop =	gp_face4;
				global.PLAYERS[arrayPosition].faceLeft = gp_face1;
				global.PLAYERS[arrayPosition].faceRight = gp_face3;
				global.PLAYERS[arrayPosition].faceBottom =	gp_face2;
			}

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
}

// DEBUG MODE ONLY: Restart game
if (keyboard_check(ord("R"))) game_restart();
// DEBUG MODE ONLY: Fullscreen toggle
if (keyboard_check(ord("F"))) {
	current = window_get_fullscreen();
	window_set_fullscreen(!current);
}