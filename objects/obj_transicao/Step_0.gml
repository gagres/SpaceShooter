/// @description Insert description here
// You can write your code in this editor

if (!troquei_room) {
	alpha += .02;
} else {
	alpha -= .02;
}

if (alpha >= 1) {
	room_goto(destino);
} else if (alpha <= 0 && troquei_room) {
	instance_destroy();
}
