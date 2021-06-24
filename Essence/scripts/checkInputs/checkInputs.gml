//function checkInputs(selection){
//	if (gamepad_button_check(selection, gp_face1)) {
//		return true;	
//	} else {
//		return false;
//	}
//}

function checkInputs(selection){

	if (gamepad_get_description(selection) == "Wireless Controller") {
		if (gamepad_button_check(selection, gp_face2)) {
			return true;	
		} else {
			return false;
		}
	} else {
		if (gamepad_button_check(selection, gp_face1)) {
			return true;	
		} else {
			return false;
		}
	}

}