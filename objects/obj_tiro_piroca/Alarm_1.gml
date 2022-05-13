/// @description Insert description here
// You can write your code in this editor

var piroca = obj_tiro_piroca;
var size = piroca.sprite_width + 200;

repeat(50) {
	var xx = irandom_range(piroca.x - size, piroca.x + size);
	instance_create_layer(xx, piroca.y - 100, "Tiros", obj_tiro_piroquinha);	
}

alarm[1] = _spawn_piroquinha_time;
