/// @description Destruir ao tomar tiro
// You can write your code in this editor

instance_create_layer(x, y, "Inimigos", obj_explosao);

// quantidade de pontos que ganha ao matar:


// Rodando o método de pontuação APENAS SE o obj_controller existir
if (instance_exists(obj_controller)){
	obj_controller.ganha_pontos(pontos);
}

// Criando shake
scr_screenshakes(10);


// Dropando o item

dropa_upgrade(chance);



// Aumentando a variavel de inimigos mortos quando um inimigo morre

global.total_inimigos++;