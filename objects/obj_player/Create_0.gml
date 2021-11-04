/// @description Iniciando variaveis


velocidade = 5;

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
		else
			if(level_tiro == 2){
				tiro2();
		}
		else
			if(level_tiro == 3){
			instance_create_layer(x, y_tiro, "Tiros", obj_tiro_player);
			tiro2();
			
			
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