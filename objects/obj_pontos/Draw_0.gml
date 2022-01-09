/// @description Insert description here
// You can write your code in this editor


//Desenhando a maior pontuação SE o obj_transição não existe



	draw_set_font(fnt_pontuacao);
	// Pontos
	//Variavel segurando o valor dos pontos
	var _pontos = round(pontos);
	
	
	draw_text(100, 100,"Recorde de pontos: " + string(_pontos));
	
	// Desenhando a quantidade de inimigos mortos
	draw_text(100, 200, "Quantidade de inimigos mortos: " + string(global.total_inimigos));
	
	// Total de mortes
	draw_text(100, 300, "Quantidade de mortes: " + string(global.total_mortes));
	
	draw_set_font(-1);

	// Fazendo pontos chegar até o valor do max pontos
	// Pegando 5% do max_pontos e adicionar esses pontos enquanto for menor que max_pontos
	
	if(pontos < global.max_pontos){
		 //Aumentando o valor de pontos em 5%
		var _incremento_pontos = global.max_pontos * 0.005; //0.09% do max pontos
		pontos += _incremento_pontos
	}
