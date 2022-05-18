/// @description Insert description here
// You can write your code in this editor

if (estado_atual == "estado 4") return;

instance_destroy(other);
vida_atual -= 5;

if (vida_atual <= 0) {
	instance_destroy();
}
