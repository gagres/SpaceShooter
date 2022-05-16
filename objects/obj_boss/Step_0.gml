/// @description Insert description here
// You can write your code in this editor

if (estado_atual == "estado 1") {
	executar_estado_1();
} else if (estado_atual == "estado 2") {
	executa_estado_2();
}

if (espera_troca_estado <= 0) {
	troca_estado();
}

espera_tiro--;
espera_troca_estado--;
