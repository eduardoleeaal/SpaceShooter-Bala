/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Chance de dropar: 40%
chance = 40;


// Criando variavel de controle para saber se posso me mover

posso_me_mover_lado = true;

atirando = function(){
	// Faz com que o inimigo só atire após entrar na tela
	if (y >= 0){
		instance_create_layer(x - 3, y + sprite_height/2, "Tiros", obj_tiro_inimigo2);
		// Som do tiro
		audio_play_sound(sfx_laser1, 1, 0);

	}
}


pontos = 20;