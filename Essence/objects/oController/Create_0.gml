defaultSpeed = 8;
playerSpeed = defaultSpeed;

// These values are given by the oGlobal object on instantiation
inputID = -1;
player = undefined;
startingX = undefined;
startingY = undefined;

// Used to track whether the player has made a selection
madeSelection = false;
objSelected = undefined;

spritesArray = [
				sControllerGreen, 
				sControllerPurple,
				sControllerRed,
				sControllerYellow
				];