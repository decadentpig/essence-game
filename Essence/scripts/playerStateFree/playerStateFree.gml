function playerStateFree(){
	inputLeft = gamepad_axis_value(inputID, gp_axislh) < 0;
	inputRight = gamepad_axis_value(inputID, gp_axislh) > 0;
	inputUp = gamepad_axis_value(inputID, gp_axislv) < 0;
	inputDown = gamepad_axis_value(inputID, gp_axislv) > 0;

	aimLeft = gamepad_axis_value(inputID, gp_axisrh) < 0;
	aimRight = gamepad_axis_value(inputID, gp_axisrh) > 0;
	aimUp = gamepad_axis_value(inputID, gp_axisrv) < 0;
	aimDown = gamepad_axis_value(inputID, gp_axisrv) > 0;

	// LEFT STICK MOVEMENT
	if (inputLeft || inputRight || inputUp || inputDown) {
		horiz = gamepad_axis_value(inputID, gp_axislh);
		vert = gamepad_axis_value(inputID, gp_axislv);
		
		direction = point_direction(0, 0, horiz, vert);
		speed = playerSpeed;
	} else {
		speed = 0;
	}
	
	// RIGHT STICK TARGETING
	if (aimLeft || aimRight || aimUp || aimDown) {
		horiz = gamepad_axis_value(inputID, gp_axisrh);
		vert = gamepad_axis_value(inputID, gp_axisrv);
		image_angle = point_direction(0, 0, horiz, vert);
	}
	
	with (arrow) {
		rightStickVal = gamepad_axis_value(other.inputID, gp_axisrh);
		
		x = other.x;
		y = other.y;
		image_angle = point_direction(other.x, 
									  other.y, 
									  x + lengthdir_x(max(1, rightStickVal * 10), other.image_angle),
									  y + lengthdir_y(max(1, rightStickVal * 10), other.image_angle)
									  );	
	}
}