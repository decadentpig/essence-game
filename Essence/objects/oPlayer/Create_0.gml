playerSpeed = -1;
inputID = -1;

state = STATES.FREE;

enum STATES {
	FREE
}

arrow = instance_create_layer(x,y+10,layer,oArrow);