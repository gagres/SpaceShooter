/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_button);
draw_text(80, 180, "Maior pontuacao: " + string(pontos));
draw_text(80, 220, "Inimigos mortos: " + string(global.enemies_defeated));
draw_text(80, 260, "Total de mortes: " + string(global.deaths));
draw_set_font(-1);

if (pontos < global.max_points) {
	pontos += global.max_points * 0.005;
}
