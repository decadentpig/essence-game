function checkInputs(selection){
	if (gamepad_button_check(selection, gp_start)) {
		return true;	
	} else {
		return false;
	}
}