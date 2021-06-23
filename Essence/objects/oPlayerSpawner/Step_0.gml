if (allSpawned == false) {
	
	player1 = instance_create_layer(p1StartX, p1StartY, "Players_Layer", global.PLAYER_1.playerObj);
	player2 = instance_create_layer(p2StartX, p2StartY, "Players_Layer", global.PLAYER_2.playerObj);
	player3 = instance_create_layer(p3StartX, p3StartY, "Players_Layer", global.PLAYER_3.playerObj);
	player4 = instance_create_layer(p4StartX, p4StartY, "Players_Layer", global.PLAYER_4.playerObj);

	with (player1) inputID = global.PLAYER_1.inputID;
	with (player2) inputID = global.PLAYER_2.inputID;
	with (player3) inputID = global.PLAYER_3.inputID;
	with (player4) inputID = global.PLAYER_4.inputID;
	
	allSpawned = true;
}