/// @description Insert description here
// You can write your code in this editor

instance_create_layer(x, y, layer, obj_inimigo_explodiu);

if (instance_exists(obj_boss)) {
	obj_boss.minion_destruido();
}
