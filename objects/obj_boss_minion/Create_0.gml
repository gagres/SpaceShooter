/// @description Insert description here
// You can write your code in this editor

tempo_entre_tiros = room_speed / 2;

pontos = 40;
vida_atual = 10;
escala = 1;
aumento_escala = 0.01

image_alpha = 0;

alarm[0] = tempo_entre_tiros * 2;

perde_vida = function () {
	vida_atual -= 2;
	image_alpha -= .2;
	aumento_escala *= 1.5;
	if (vida_atual <= 0) {
		instance_destroy();
	}
}
