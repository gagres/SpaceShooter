/// @description Insert description here
// You can write your code in this editor

/*
	Estado 1 = parado dando tiro 2
	Estado 2 = Movendo dando o tiro 1
	Estado 3 = Parado intercalando o tiro 1 e 2
	Estado especial 1 = Ficar invunerável enquanto cria 2 minions para recuperar vida
*/

_speed = 10;
estado_atual = "estado 2";
delay_tiro = room_speed / 2;
espera_tiro = 0;
delay_troca_estado = room_speed * 5;
espera_troca_estado = delay_troca_estado;

vida_max = 2000;
vida_atual = vida_max;
minions = 0;

reset = function () {
	sprite_index = spr_boss;
	hspeed = 0;
}

troca_estado = function () {
	if (espera_troca_estado <= 0) {
		reset();
		estado_atual = choose("estado 1", "estado 2", "estado 3");
		if (vida_atual < vida_max / 2) {
			estado_atual = choose("estado 1", "estado 2", "estado 3", "estado 4");
		}
		espera_troca_estado = delay_troca_estado;
	}
	espera_troca_estado--;
}

criar_tiro_1 = function (_direita = false) {
	var posx = -160;
	if (_direita) posx = 160;
	instance_create_layer(x + posx, y + 10, "Tiros", obj_tiro_inimigo_1);
}

criar_tiro_2 = function () {
	instance_create_layer(x, y + 80, "Tiros", obj_tiro_inimigo_2);
}

mover_horizontalmente = function () {
	if (x <= 288) _speed *= -1;
	else if (x >= 1632) _speed *= -1;
	hspeed = _speed;
}


executa_estado_1 = function () {
	if (espera_tiro <= 0) {
		criar_tiro_2();
		espera_tiro = delay_tiro;
	}
	espera_tiro--;
}

executa_estado_2 = function () {
	if (espera_tiro <= 0) {
		criar_tiro_1();
		criar_tiro_1(true);
		espera_tiro = delay_tiro * .5;
	}
	mover_horizontalmente();
	espera_tiro--;
}

executa_estado_3 = function () {
	if (espera_tiro <= 0) {
		criar_tiro_2();
		espera_tiro = delay_tiro * 2;
	}
	var espera_tiro_1 = delay_tiro round(delay_tiro / 4);
	if (espera_tiro == espera_tiro_1) {
		criar_tiro_1();
	}
	if (espera_tiro == espera_tiro_1 + 10) {
		criar_tiro_1(true);
	}
	espera_tiro--;
}

executa_estado_4 = function () {
	x += sign((room_width / 2) - x) * 3;
	
	if (minions == 0) {
		sprite_index = spr_boss_shield;
		var _minion = instance_create_layer(128, 672, "Inimigos", obj_boss_minion);
		_minion.image_angle = 90;
		_minion = instance_create_layer(1760, 672, "Inimigos", obj_boss_minion);
		_minion.image_angle = 270;
		minions = 2;
	}
}

recuperar_vida = function () {
	vida_atual += 5;
}

minion_destruido = function () {
	minions--;
	if (minions < 1) {
		espera_troca_estado = 0;
		troca_estado();
	}
}
