/// @description Iniciando o inimigo
// You can write your code in this editor

// Chance de dropar o item é : 25%
chance = 25;

vspeed = 3;

// Criando tiro do inimigo

atirando = function(){
	// Faz com que o inimigo só atire após entrar na tela
	if (y >= 0){
		instance_create_layer(x - 3, y + sprite_height/2, "Tiros", obj_tiro_inimigo);
		
		// Som do tiro
		audio_play_sound(sfx_laser1, 1, 0);
	}
}

// Checando se eu estou colindo com algum outro inimigo
// Se eu colidir com algum outro inimigo na criação eu sou destruido
if(place_meeting(x, y, obj_inimigo)){
	instance_destroy(id, false);	
}

pontos = 50;
// Iniciando o alarme em 2 seg
alarm[0] = room_speed * random_range(1, 3);



// Metodo para dropar
///@method dropa_upgrade(chance_de_dropar);
dropa_upgrade = function(_chance){
	var valor = random(100);
	
	// Se o valor for menor doq a chance ele cria o item
	if(valor < _chance && y > 56){
		// Criando o item
		instance_create_layer(x, y, "Tiros", obj_powerup);
	}
}