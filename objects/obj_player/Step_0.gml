/// @description Insert description here
// You can write your code in this editor

/* 
	3 Upgrades possivels

	Velocidade	-	.05		-	Limite: 10
	Level Tiro	-	1		-	Limite: 5
	Espera Tiro	-	10%		-	Limite: 11		

*/



//Melhorando o codigo de movimentação

var up, down, left, right, setinha_cima, setinha_baixo, setinha_esquerda, setinha_direita;

up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));


y += (down - up) * velocidade;
x += (right - left) * velocidade;



//Impedindo o player de sair da room

/*
if	(x <= 0060)	x = 0060;

if	(x >= 1860)	x = 1860;

if	(y >= 1024)	y = 1024;

if	(y <= 0060)	y = 0060;
*/

// Função CLAMP para impedir o player de sair da room

x = clamp(x, 60, 1860);
y = clamp(y, 60, 1024);


//Criando o tiro
atirando();


// Criando o escudo



criar_escudos();









						//  DEBUG  //

// Level dos tiros


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

// Fazer o tempo de tiro diminuir se eu apertar a setinha para esquerda
setinha_esquerda = keyboard_check_pressed(vk_left);
if(setinha_esquerda && espera_tiro >= 11.50){
	espera_tiro *= 0.9;
}
// Fazer aumentar a espera do tiro apertando a setinha para direita
setinha_direita = keyboard_check_pressed(vk_right);
if(setinha_direita){
	espera_tiro *= 1.1;
}


///////////////////////////////////
// DEBUG DA VIDA

// show_debug_message(vida);

///////////////////////////////////
	

						//  DEBUG  //

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