/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// mudando a direcao depois que eu me movi x pixels
if (x >= xstart + 50 || x <= xstart - 50) {
	hspeed *= -1;
}
