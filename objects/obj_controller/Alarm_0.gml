/// @description Geração de inimigos
// You can write your code in this editor


// Checando se ainda resta inimigo vivo
if(!instance_exists(obj_inimigo)){

	// Repetindo o mesmo codigo
	// Criando inimigos
	// Só criar inimigos se eu ainda não criar inimigos
	if(level < 10){
		repeat(10 * level){
			cria_inimigo();
		}
	}
		else
			if(level >= 10 && criar_boss == true){
				// criando boss
				layer_sequence_create("BOSS_ENTRANDO", 992, 576, sq_boss_entrada);
				// garantindo que ele não nasça duas vezes
				criar_boss = false;
			}
	
	show_debug_message("Mudou de onda");
}

alarm[0] = room_speed * 5;