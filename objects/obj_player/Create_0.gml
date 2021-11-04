/// @description Iniciando variaveis


velocidade = 5;

espera_tiro = room_speed * .7;

level_tiro = 1;

atirando = function(){
	// Ativando o alarme pelo step a cada 1 seg
	// Se eu apertei o espaço e o alarme ainda não foi
	var fire = keyboard_check(vk_space);
	
	if(fire && (alarm[0] == -1)){
		alarm[0] = espera_tiro;

		// Criar o tiro na hora q eu aperto o espaço
		// Atirar a cada 1 seg
		// Meu codigo de tirinho
		
		// Criar uma condição para atirar dependendo do tiro
		
		// Tiro do lvl 1
		if(level_tiro == 1){
			instance_create_layer(x, y - sprite_height / 3, "Tiros", obj_tiro_player);
		}
		else
			if(level_tiro == 2){
				instance_create_layer(x, y - sprite_height / 3, "Tiros", obj_tiro_player2);
		}
		
	}
}