if ((global.PLAYER_1.playerObj != undefined &&
	global.PLAYER_2.playerObj != undefined &&
	global.PLAYER_3.playerObj != undefined &&
	global.PLAYER_4.playerObj != undefined &&
	state == "unready")) {
		createDialog(672, 672, "Processes", 8.35, 1, "PLAYER 1: Press X to START!");
		state = "ready";
}

if (state == "ready" && gamepad_button_check(global.PLAYER_1.inputID, global.PLAYER_1.faceBottom)) {
	room_goto_next();	
}