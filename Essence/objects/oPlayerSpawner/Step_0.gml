if (allSpawned == false) {

	for (i = 0; i < 4; i++) {
		// PLAYER OBJECT CONSTRUCTOR
		// Player object instances already exist in Room Editor. They are
		// given initial values here, where a value is dependent upon the
		// instance or class in some way (and so cannot naively inherit from
		// the oPlayer Create event)
		with (global.PLAYERS[i].playerObj) {
			
			inputID = global.PLAYERS[other.i].inputID;
			gamepad_set_axis_deadzone(inputID, 0.4);
			
			// Class-specific initialisations will occur here
			// (think attack states, health and armour, etc.)
			switch(object_index) {
				case oPlayerHealer:
					playerSpeed = 3;
					break;
				case oPlayerMelee:
					playerSpeed = 4;
					break;
				case oPlayerRanged:
					playerSpeed = 3;
					break;
				case oPlayerTank:
					playerSpeed = 2;
					break;
				default:
					show_debug_message("Failed to assign playerSpeed to instance.");
			}
		}
	}
	
	allSpawned = true;	
}