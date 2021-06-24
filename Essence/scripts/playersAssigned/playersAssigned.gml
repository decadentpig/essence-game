function playersAssigned(){
	if (
		global.PLAYER_1.inputID != -1 &&
		global.PLAYER_2.inputID != -1 &&
		global.PLAYER_3.inputID != -1 &&
		global.PLAYER_4.inputID != -1
		) {
			return true;
	} else {
		return false;
	}
}