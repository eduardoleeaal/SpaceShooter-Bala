/// @description Insert description here
// You can write your code in this editor

//Ficando visivel se eu ainda não estou visivel
if(image_alpha < 1){
	image_alpha += 1 / room_speed;
}


// Fazendo o minion morrer se chegar a 0 de vida
if(vida_minion <= 0){
	instance_destroy();
}

