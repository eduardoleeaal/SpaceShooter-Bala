/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

// Checando se eu já passei de 1/3 da tela
if ((y > room_height / 5) && (posso_me_mover_lado == true)){

	// Checando de que lado da room eu estou

	if (x < room_width / 2){

		hspeed = 3;
		// Mostrando que ele não pode mais se mover
		posso_me_mover_lado = false;
	}
	else{

		hspeed = -3;
		// Mostrando que ele não pode mais se mover
		posso_me_mover_lado = false;
	}
}