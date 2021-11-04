/// @description Geração de inimigos
// You can write your code in this editor


// Checando se ainda resta inimigo vivo
if(!instance_exists(obj_inimigo)){

	// Repetindo o mesmo codigo
	// Criando inimigos
	repeat(10 * level){
		cria_inimigo();
	}
	
	show_debug_message("Mudou de onda");
}

alarm[0] = room_speed * 5;