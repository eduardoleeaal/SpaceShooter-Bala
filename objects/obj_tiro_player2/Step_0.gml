/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();


// Mudando a direção depois que eu movi X pixels
// Checando se eu me movi 50Px para direita
// OU
// Se eu me movi 50Px para a esquerda
if((x > xstart + 65) || (x < xstart - 65)){
	// Devo inverter minha velocidade horizontal
	hspeed *= -1;
}