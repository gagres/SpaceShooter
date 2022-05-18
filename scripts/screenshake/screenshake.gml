// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screenshake(_shake = 5){
	var screen = instance_create_layer(0, 0, "Shield", obj_screenshake);
	screen.shake = _shake;
}
