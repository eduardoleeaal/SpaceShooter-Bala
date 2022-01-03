/// @description Insert description here
// You can write your code in this editor

//Dando 10 de vida pro minion
vida_minion = 10;


// Começando invisivel
image_alpha = 0;

//iniciando o alarm

alarm[0] = room_speed;



// Checando se eu colidi com outro minion


if (place_meeting(x, y, obj_minion)){
	// Se eu colidir com outro minion sobe 128
		y -= 128;
}