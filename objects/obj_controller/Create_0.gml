/// @description Insert description here
// You can write your code in this editor

// Randomizando o jogo
randomize();

// Sistema de pontos:

pontos = 0;






// CONTROLE DO BOSS:
criar_boss = true;

//CONTROLE JOGO
level_completo = false;

// Ativação do alarme:
alarm[0] = room_speed * 1;

// Iniciando o Sistema de level

level = 1;

// Quantidade de pontos para o proximo level:

proximo_level = 10;

// Criando um método para ganhar pontos
/// @method ganha_pontos(pontos)
ganha_pontos = function(_pontos){
	pontos += _pontos * level;
	
	// Ganhando Level SE os pontos forem > doq o proximo_level
	
	if (pontos >= proximo_level){
	level++;
	
	// Dobrando o valor para o proximo level
	proximo_level *= 2;
	
	/*
	1	 = 0		- 10
	2	 = 100		- 20
	3	 = 200		- 30
	4	 = 400		- 40
	5	 = 800		- 50
	6	 = 1600		- 60
	7	 = 3200		- 70
	8	 = 6400		- 80
	9	 = 12800	- 90
	10	 = 25600	- 100
	
	
	*/
	
	
	}
}

// Criando um metodo para criar inimigos
cria_inimigo = function(){

		// Fazendo eles nascerem em lugares aleatorios
	var posx = irandom_range(32, 1888);
	
		// Aumentando o limite com base no lvl do jogo
	var posy = irandom_range(-96, -1280 - level * 800);


		// Criando o inimigo com base no level
		// A chance de criar um inimigo mais forte depende do level
	var chance = random_range(0, level);

		// Se o valor da chance for maior doq 2
		// LVL - 1 --> Inimigo 1
		// LVL - 2 --> Inimigo 1
		// LVL - 3 --> Inimigo 1 / Inimigo 2
	var inimigo = obj_inimigo;

	if(chance > 2){
		inimigo = obj_inimigo2
	}


	instance_create_layer(posx, posy, "inimigos", inimigo);
}

// Variavel de controle para o gameover

gameover_seq = noone;