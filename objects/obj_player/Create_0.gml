/// @description Iniciando variaveis


velocidade = 5;

atirando = function(){
	// Criando o tiro
	var fire = keyboard_check_pressed(vk_space);

	if (fire){
		// Gerando o tiro
		instance_create_layer(x, y - sprite_height / 3, "Tiros", obj_tiro_player);
	
	}
}