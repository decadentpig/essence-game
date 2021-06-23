function createDialog(posX, posY, layerName, widthArg, heightArg, textArg){

	dialog = instance_create_layer(posX, posY, layerName, oDialogBox);
	
	with (dialog) {
		width = widthArg;
		height = heightArg;
		text = textArg;
	}

}