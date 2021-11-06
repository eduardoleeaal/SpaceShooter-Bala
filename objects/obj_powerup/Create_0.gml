/// @description Insert description here
// You can write your code in this editor

/* 
	3 Upgrades possivels

	Velocidade	-	.5		-	Limite: 10		- Raro			- 35%
	Level Tiro	-	1		-	Limite: 5		- Muito Raro	- 10%
	Espera Tiro	-	10%		-	Limite: 11		- Comum			- 55%

*/

// Criando um chance entre 0 e 100 para ele decidir qual vai ser o upgrade

chance = random(100); // Chance vai ficar de 0 a 100;

// SE o valor da chance for 90 ou mais ela cria o powerup do tiro
// SE o valor do chance for 55 até 89 ela cria upgrade da espera do tiro
// SE o valor da chance for menor que 54 ela cria o upgrade da velocidade

// Iniciando o alarme
alarm[0] = room_speed;



// Dependendendo da chance a cor vai ser diferente
if (chance >= 90){
	cor = c_red;
}
	else if(chance >= 55){
		cor = c_aqua;
	}
		else{
		cor = c_green;
		}
		


// Fazendo ele se mover para algum lado após ser criado

speed = 2;
direction = irandom(359);