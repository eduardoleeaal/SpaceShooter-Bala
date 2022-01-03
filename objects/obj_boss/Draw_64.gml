/// @description Insert description here
// You can write your code in this editor


// Desenhando a barra de vida do boss

//Convertendo o valor da vida atual do boss em um numero entre 0 e 100

var _vida = (vida_atual / vida_max) * 100;

draw_healthbar(100 , 20, 860, 35, _vida, c_black, c_red, c_lime, 0, false, false);