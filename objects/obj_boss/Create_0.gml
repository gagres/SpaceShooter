/// @description Insert description here
// You can write your code in this editor

/*
	Estado 1 = parado dando tiro 2
	Estado 2 = Movendo dando o tiro 1
	Estado 3 = Parado intercalando o tiro 1 e 2
	Estado especial 1 = Ficar invunerável enquanto cria 2 minions para recuperar vida
*/

_speed = 10;
estado_atual = "estado 1";
delay_tiro = room_speed / 2;
espera_tiro = 0;
delay_troca_estado = room_speed * 10;
espera_troca_estado = delay_troca_estado;

troca_estado = function () {
	estado_atual = choose("estado 1", "estado 2");
	show_debug_message(estado_atual);
	espera_troca_estado = delay_troca_estado;
}


executar_estado_1 = function () {
	if (espera_tiro <= 0) {
		instance_create_layer(x, y + 80, "Tiros", obj_tiro_inimigo_2);
		espera_tiro = delay_tiro;
	}
}

executa_estado_2 = function () {
	if (espera_tiro <= 0) {
		instance_create_layer(x - 160, y + 10, "Tiros", obj_tiro_inimigo_1);
		instance_create_layer(x + 160, y + 10, "Tiros", obj_tiro_inimigo_1);
		espera_tiro = delay_tiro * .5;
	}
	if (x <= 288) _speed *= -1;
	else if (x >= 1632) _speed *= -1;
	hspeed = _speed;
}
