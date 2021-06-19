inputLeft = gamepad_axis_value(inputID, gp_axislh) < 0 || keyboard_check(ord("A"));
inputRight = gamepad_axis_value(inputID, gp_axislh) > 0 || keyboard_check(ord("D"));
inputUp = gamepad_axis_value(inputID, gp_axislv) < 0 || keyboard_check(ord("W"));
inputDown = gamepad_axis_value(inputID, gp_axislv) > 0 || keyboard_check(ord("S"));

if (global.GAME_PAUSED == false) {
  if (inputLeft && !place_meeting(x-playerSpeed,y,oBoundary)) x -= playerSpeed;
  if (inputRight && !place_meeting(x+playerSpeed,y,oBoundary)) x += playerSpeed;
  if (inputUp && !place_meeting(x,y-playerSpeed,oBoundary)) y -= playerSpeed;
  if (inputDown && !place_meeting(x,y+playerSpeed,oBoundary)) y += playerSpeed;
}