/// @description Iniciando o inimigo
// You can write your code in this editor


vspeed = 3;

// Criando tiro do inimigo

atirando = function(){
	// Faz com que o inimigo só atire após entrar na tela
	if (y >= 0){
		instance_create_layer(x - 3, y + sprite_height/2, "Tiros", obj_tiro_inimigo);
	}
}

// Checando se eu estou colindo com algum outro inimigo
// Se eu colidir com algum outro inimigo na criação eu sou destruido
if(place_meeting(x, y, obj_inimigo)){
	instance_destroy(id, false);	
}

pontos = 10;
// Iniciando o alarme em 2 seg
alarm[0] = room_speed * random_range(1, 3);
