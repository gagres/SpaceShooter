/// @description Insert description here
// You can write your code in this editor

// Criando uma chance entre 0 e 100 para ele decidir qual vai ser o upgrade

chance = random(100);

speed = irandom_range(1, 5);
direction = random(359);

if (chance > 90) {
	cor = c_red;
} else if (chance > 45) {
	cor = c_yellow;
} else {
	cor = c_aqua;
}

alarm[0] = room_speed;
