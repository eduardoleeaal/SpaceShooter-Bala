/// @description Iniciando variaveis

/* 
	3 Upgrades possivels
	Velocidade	-	.5		-	Limite: 10		- Raro			- 35%
	Level Tiro	-	1		-	Limite: 5		- Muito Raro	- 10%
	Espera Tiro	-	10%		-	Limite: 11		- Comum			- 55%
*/

//Sistema de vida
vida = 3;
//
velocidade = 5;

escudos = 3;

espera_tiro = room_speed * .7;

level_tiro = 1;

atirando = function(){
	// Ativando o alarme pelo step a cada 1 seg
	// Se eu apertei o espaço e o alarme ainda não foi
	var fire = keyboard_check(vk_space);
	
	// y do tiro
	var y_tiro = y - sprite_height / 3;
	
	if(fire && (alarm[0] == -1)){
		alarm[0] = espera_tiro;

		// Criar o tiro na hora q eu aperto o espaço
		// Atirar a cada 1 seg
		// Meu codigo de tirinho
		
		// Criar uma condição para atirar dependendo do tiro
		
		// Tiro do lvl 1
		if(level_tiro == 1){
			instance_create_layer(x, y_tiro, "Tiros", obj_tiro_player);
		}
		else // Tiro lvl 2
			if(level_tiro == 2){
				tiro2();
		}
		else // Tiro lvl 3
			if(level_tiro == 3){
				instance_create_layer(x, y_tiro, "Tiros", obj_tiro_player);
				tiro2();
		}
		else // Tiro lvl 4
			if(level_tiro == 4){
				tiro4();
		}
		else
			if(level_tiro == 5){
				tiro2();
				tiro4();
		}
	}
}


// Metodo para criar o tiro lvl 2

tiro2 = function(){
			// Variavel de posição do eixo Y
			var y_tiro = y - sprite_height / 3;
			
			// Criando o segundo tiro na asa esquerda
			// Fazendo o tiro da esquerda ir para esquerda	
			var tiro_1 = instance_create_layer(x - sprite_width / 3, y_tiro + 10, "Tiros", obj_tiro_player2);
			
			// Mandando o tiro1 ir para esquerda
			tiro_1.hspeed = -5;
				
			// Criando o segundo tiro na asa direita
			// Fazendo o tiro da direita ir para direita
			var tiro_2 = instance_create_layer(x + sprite_width / 3, y_tiro + 10, "Tiros", obj_tiro_player2);
			
			// Mandando o tiro2 ir para direita
			tiro_2.hspeed = 5;
}

// Método para criar o tiro lvl 4

tiro4 = function(){
	// Variavel de posição do eixo Y
	var y_tiro = y - sprite_height / 3;
				
	// Definindo a direção
	var direcao = 75;
				
	repeat(3){
		var meu_tiro = instance_create_layer(x, y_tiro, "tiros", obj_tiro_player);
		// Fazer o tiro ir para direita
		meu_tiro.direction = direcao;
		// Fazer olhar para onde está indo
		meu_tiro.image_angle = meu_tiro.direction - 90;
				
		// Fazendo mudar de direção
		direcao += 15;			
	}	
}

// Método de upgrade
///@method upgrade_p(chance);
upgrade_p = function(_chance){
	if (_chance >= 90){
		// Aumentando o level do tiro se o level do tiro for menor doq 5
		if(level_tiro < 5){
			level_tiro++;
		}
		else{
			if (escudos = 3 && vida < 5){
				vida++;
			}
				else{
					escudos++;
				}
		}
	}
	else
		if(_chance >= 55){
			if(espera_tiro >= 11.50){
				espera_tiro *= 0.9;
			}
		}
	else{
		if(velocidade < 10){
			velocidade += .5;
		}
	}
}

// Método para sistema de vida
///@method perdervida();
perdervida = function(){
	if(vida > 0){
		// TOMEI TIRO E NÃO MORRI
		vida--;
		scr_screenshakes(5);
	}
	else{
		// TOMEI TIRO E MORRI
		instance_destroy();
		scr_screenshakes(150);
	}
}