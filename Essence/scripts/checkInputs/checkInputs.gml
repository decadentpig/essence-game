function checkInputs(selection){
	if (gamepad_button_check(selection, gp_face2)) {
		return true;	
	} else {
		return false;
	}
}