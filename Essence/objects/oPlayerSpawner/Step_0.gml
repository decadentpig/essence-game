if (allSpawned == false) {
	// Pass player's input ID to nearest instance of the player's
	// associated object (already existing in the room)
	global.PLAYER_1.playerObj.inputID = global.PLAYER_1.inputID;
	global.PLAYER_2.playerObj.inputID = global.PLAYER_2.inputID;
	global.PLAYER_3.playerObj.inputID = global.PLAYER_3.inputID;
	global.PLAYER_4.playerObj.inputID = global.PLAYER_4.inputID;
	
	allSpawned = true;	
}