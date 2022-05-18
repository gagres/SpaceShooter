// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function game_score(){

}

function enemy_killed(_pontos) {
	if (instance_exists(obj_controller)) {
		obj_controller.ganha_pontos(_pontos);
	}
	global.enemies_defeated++;
}


