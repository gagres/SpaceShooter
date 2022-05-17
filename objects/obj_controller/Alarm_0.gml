/// @description Criando os inimigos
// You can write your code in this editor

if (!instance_exists(obj_inimigo_1)) {
	if (level < 10) {
		repeat(level * 5) {
			criar_inimigo();
		}
	} else if (
		!instance_exists(obj_inimigo_1) &&
		!boss_ta_on
	) {
		layer_sequence_create("Boss_Entrada", 960, 512, sq_boss_entrando);
		boss_ta_on = true;
	}
}

alarm[0] = room_speed * 5;
