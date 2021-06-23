function checkInputs(selection){
	if (gamepad_button_check(selection, gp_face1)) {
		return true;	
	} else {
		return false;
	}
}