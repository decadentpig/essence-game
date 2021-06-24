// FOR DEBUGGING ONLY
for (i = 0; i < 8; i++) {
	// D-PAD
	if (gamepad_button_check_pressed(i, gp_padl)) show_debug_message("Pressed: gp_padl");
	if (gamepad_button_check_pressed(i, gp_padu)) show_debug_message("Pressed: gp_padu");	
	if (gamepad_button_check_pressed(i, gp_padd)) show_debug_message("Pressed: gp_padd");	
	if (gamepad_button_check_pressed(i, gp_padr)) show_debug_message("Pressed: gp_padr");
	
	// FACE BUTTONS
	if (gamepad_button_check_pressed(i, gp_face1)) show_debug_message("Pressed: gp_face1");
	if (gamepad_button_check_pressed(i, gp_face2)) show_debug_message("Pressed: gp_face2");
	if (gamepad_button_check_pressed(i, gp_face3)) show_debug_message("Pressed: gp_face3");	
	if (gamepad_button_check_pressed(i, gp_face4)) show_debug_message("Pressed: gp_face4");	
	
	// TRIGGERS
	if (gamepad_button_check_pressed(i, gp_shoulderrb)) show_debug_message("Pressed: gp_shoulderrb");	
	if (gamepad_button_check_pressed(i, gp_shoulderlb)) show_debug_message("Pressed: gp_shoulderlb");	
	
	// SHOULDERS / BUMPERS
	if (gamepad_button_check_pressed(i, gp_shoulderr)) show_debug_message("Pressed: gp_shoulderr");	
	if (gamepad_button_check_pressed(i, gp_shoulderl)) show_debug_message("Pressed: gp_shoulderl");
	
	// START BUTTON
	if (gamepad_button_check_pressed(i, gp_start)) show_debug_message("Pressed: gp_start");	
}