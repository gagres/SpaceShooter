/// @description Criando os inimigos
// You can write your code in this editor

if (!instance_exists(obj_inimigo_1)) {
	if (level < 10) {
		criar_inimigo();
	} else if (
		!instance_exists(obj_inimigo_1) &&
		!boss_ta_on
	) {
		start_boss_fight();
	}
}

alarm[0] = room_speed * 5;
