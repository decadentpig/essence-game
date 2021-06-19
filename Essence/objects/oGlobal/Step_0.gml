for (i = 0; i < 8; i++) {
	if (checkInputs(i) &&
		inputIDs[0] != i &&
		inputIDs[1] != i &&
		inputIDs[2] != i &&
		inputIDs[3] != i) {

		arrayPosition = (i < 4) ? i : i - 4;

		inputIDs[arrayPosition] = i;

		switch (i) {
			case 4:
			case 0:
				setX = 1120;
				setY = 32;
				break;
			case 5:
			case 1:
				setX = 1184;
				setY = 32;
				break;
			case 6:
			case 2:
				setX = 1249;
				setY = 34;
				break;
			case 7:
			case 3:
				setX = 1313;
				setY = 32;
				break;
		}

		newPlayer = instance_create_layer(setX,setY,"Instances",oPlayer);

		with (newPlayer) {
			inputID = other.i;
			arrayPosition = other.arrayPosition;
			gamepad_set_axis_deadzone(inputID, 0.4);
			sprite_index = spritesArray[other.arrayPosition];
		}
	}	
}
