global.MANAGER = id;
global.GAME_PAUSED = false;


global.PLAYER_1 = {
	inputID: -1,
	playerNumber: -1,
	controlObj: instance_create_layer(544,640,"Players_Layer",oController),
	playerObj: undefined,
	
	faceTop: gp_face4,
	faceLeft: gp_face3,
	faceRight: gp_face2,
	faceBottom: gp_face1,
}

global.PLAYER_2 = {
	inputID: -1,
	playerNumber: -1,
	controlObj: instance_create_layer(640,640,"Players_Layer",oController),
	playerObj: undefined,
	
	faceTop: gp_face4,
	faceLeft: gp_face3,
	faceRight: gp_face2,
	faceBottom: gp_face1,
}

global.PLAYER_3 = {
	inputID: -1,
	playerNumber: -1,
	controlObj: instance_create_layer(736,640,"Players_Layer",oController),
	playerObj: undefined,
	
	faceTop: gp_face4,
	faceLeft: gp_face3,
	faceRight: gp_face2,
	faceBottom: gp_face1,
}

global.PLAYER_4 = {
	inputID: -1,
	playerNumber: -1,
	controlObj: instance_create_layer(832,640,"Players_Layer",oController),
	playerObj: undefined,
	
	faceTop: gp_face4,
	faceLeft: gp_face3,
	faceRight: gp_face2,
	faceBottom: gp_face1,
}

global.PLAYERS = [global.PLAYER_1, global.PLAYER_2, global.PLAYER_3, global.PLAYER_4];

