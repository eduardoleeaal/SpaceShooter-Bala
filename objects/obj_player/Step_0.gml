/// @description Insert description here
// You can write your code in this editor



//Melhorando o codigo de movimentação

var up, down, left, right, setinha_cima, setinha_baixo;

up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));

// Level dos tiros

show_debug_message(level_tiro);

// Fazer com que o level do tiro suba sempre que eu apertar a setinha para cima apenas se o 
// Level do tiro for menor doq 5
setinha_cima = keyboard_check_pressed(vk_up);
if(setinha_cima && level_tiro < 5){
	level_tiro++;
}
// Fazer o level do tiro diminuir até lvl 1 até chegar ao lvl 1
setinha_baixo = keyboard_check_pressed(vk_down);
if(setinha_baixo && level_tiro > 1){
	level_tiro--;	
}
//Criando o tiro
atirando();
	
y += (down - up) * velocidade;
x += (right - left) * velocidade;


/*
y -= up * velocidade;
y += down * velocidade;
x -= left * velocidade;
x += right * velocidade;
*/





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