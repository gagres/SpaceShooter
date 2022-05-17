// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function animations(){

}


function destroy_boss_sequence() {
	var elementos = layer_get_all_elements("Boss_Entrada");
	layer_sequence_destroy(elementos[0]);
	instance_create_layer(960, 256, "Boss", obj_boss);
}
	
