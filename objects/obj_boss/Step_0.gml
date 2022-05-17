/// @description Insert description here
// You can write your code in this editor

if (estado_atual == "estado 1") {
	executa_estado_1();
} else if (estado_atual == "estado 2") {
	executa_estado_2();
} else if (estado_atual == "estado 3") {
	executa_estado_3();
}

troca_estado();

if (keyboard_check_pressed(ord("P"))) {
	vida_atual -= 100;
}
