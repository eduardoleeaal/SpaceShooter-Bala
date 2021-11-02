/// @description Insert description here
// You can write your code in this editor



//Melhorando o codigo de movimentação

var up, down, left, right, fire;

up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
fire = keyboard_check_pressed(vk_space);


y += (down - up) * velocidade;
x += (right - left) * velocidade;



/*
y -= up * velocidade;
y += down * velocidade;
x -= left * velocidade;
x += right * velocidade;
*/

// Criando o tiro
if (fire){
		// Gerando o tiro
	instance_create_layer(x, y - sprite_height / 3, "Tiros", obj_tiro_player);
}













/* 
// Movendo para esquerda
if (keyboard_check(ord("A"))){
	x -= velocidade;
}

// Movendo para direita
if (keyboard_check(ord("D"))){
	x += velocidade;
}

// Movendo para cima
if (keyboard_check(ord("W"))){
	y -= velocidade;	
}

// Movendo para baixo
if (keyboard_check(ord("S"))){
	y += velocidade;	
}
*/