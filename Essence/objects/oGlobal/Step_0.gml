for (i = 0; i < 8; i++) {
	if (checkInputs(i) &&
		global.PLAYER_1.inputID != i &&
		global.PLAYER_2.inputID != i &&
		global.PLAYER_3.inputID != i &&
		global.PLAYER_4.inputID != i) {

		arrayPosition = (i < 4) ? i : i - 4;

		global.PLAYERS[arrayPosition].inputID = i;

		//switch (i) {
		//	case 4:
		//	case 0:
		//		setX = 1120;
		//		setY = 32;
		//		break;
		//	case 5:
		//	case 1:
		//		setX = 1184;
		//		setY = 32;
		//		break;
		//	case 6:
		//	case 2:
		//		setX = 1249;
		//		setY = 34;
		//		break;
		//	case 7:
		//	case 3:
		//		setX = 1313;
		//		setY = 32;
		//		break;
		//}
		
		oldController = global.PLAYERS[arrayPosition].controlObj;
		setX = oldController.x;
		setY = oldController.y;
		
		instance_destroy(oldController);

		newController = instance_create_layer(setX,setY,"Player_Layer",oController);
		global.PLAYERS[arrayPosition].controlObj = newController;

		with (newController) {
			inputID = other.i;
			player = global.PLAYERS[other.arrayPosition];
			gamepad_set_axis_deadzone(inputID, 0.4);
			sprite_index = spritesArray[other.arrayPosition];
		}
	}	
}
