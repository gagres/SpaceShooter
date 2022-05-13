/// @description Criando os inimigos
// You can write your code in this editor

if (!instance_exists(obj_inimigo_1)) {
	repeat(level * 5) {
		criar_inimigo();
	}
}

alarm[0] = room_speed * 5;
