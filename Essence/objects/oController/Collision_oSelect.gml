// Allow player to select this class if it has not already been chosen
if (other.selected == false) {
	
	with (other) {
		sprite_index = selectedSprite;
		selected = true;
	}
	
	// Stop the player from moving, pass the associated player object to the
	// player's global struct
	playerSpeed = 0;
	objSelected = other;
	player.playerObj = other.object;
	madeSelection = true;
	
	x = other.x;
	y = other.y + 50;
}