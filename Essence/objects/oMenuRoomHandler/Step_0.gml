if (
	(global.PLAYER_1.playerObj != undefined &&
	global.PLAYER_2.playerObj != undefined &&
	global.PLAYER_3.playerObj != undefined &&
	global.PLAYER_4.playerObj != undefined &&
	state == "unready") ||
	keyboard_check(vk_space) // FOR DEBUGGING ONLY
	) {
		createDialog(672, 672, "Processes", 8.35, 1, "PLAYER 1: Press X to START!");
		state = "ready";
}

if (state == "ready" && gamepad_button_check(player1inputID, gp_face1)) {
	room_goto_next();	
}