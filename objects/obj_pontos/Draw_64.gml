/// @description Insert description here
// You can write your code in this editor


//Desenhando a maior pontuação SE o obj_transição não existe


if(!instance_exists(obj_transicao)){
	draw_set_font(fnt_pontuacao);
	// Pontos
	
	draw_text(100, 100,"Recorde de pontos: " + string(global.max_pontos));
	
	// Desenhando a quantidade de inimigos mortos
	draw_text(100, 200, "Quantidade de inimigos mortos: " + string(global.total_inimigos));
	
	// Total de mortes
	draw_text(100, 300, "Quantidade de mortes: " + string(global.total_mortes));
	
	draw_set_font(-1);
}


