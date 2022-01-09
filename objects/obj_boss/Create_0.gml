/// @description Insert description here
// You can write your code in this editor

/*

Estado 1 = Parado dando tiro 2
Estado 2 = Movendo dando tiro 1
Estado 3 = Parado intercalando entre tiro 1 e tiro 2

(estado 4)
Estadio especial 1 = ficar parado com minions recuperando vida dele
*/


//====================================================================================//
//						METODO DE TIROS

tiro01_esquerda = function(){
	instance_create_layer(x - 161, y + 14, "Tiros" , obj_tiro_inimigo);
}
tiro01_direita = function(){
	instance_create_layer(x + 161, y + 14, "Tiros" , obj_tiro_inimigo);
}
tiro02 = function(){
	instance_create_layer(x, y + 80, "Tiros", obj_tiro_inimigo2);
}

//====================================================================================//

// Iniciando o sistema de vida
vida_max = 1;
vida_atual = vida_max;

//====================================================================================//




//====================================================================================//

estado_atual = choose("estado 3", "estado 1", "estado 2");



// VARIAVEIS BOSS
velocidade_horizontal = 20;
controle_minion = false;

//ESTADOS BOSS
delay_estado = room_speed * 10; // 10 Segundos
espera_estado = delay_estado;

// TIROS
delay_tiro = room_speed * .5;
espera_do_tiro = 0;

//====================================================================================//

//Metodo do estado 01

estado01 = function(){
	//Diminuindo a espera do tiro
	espera_do_tiro--;
	
	//Codigo do estado 1
	//Criando o tiro 2 SE a espera do tiro for menor ou igual a 0
	if(espera_do_tiro <= 0){
		tiro02();
		
		espera_do_tiro = delay_tiro * 1.2;
	}
}

//====================================================================================//

// Metodo do estado 02

estado02 = function(){
	// Abaixando a espera do tiro
	espera_do_tiro--;
	
	//Criando o tiro 1 SE a espera do tiro for menor ou igual a 0
	if(espera_do_tiro <= 0){
		// Criando o tiro 1 na esquerda
		tiro01_esquerda();
		// Criando o tiro 1 na direita
		tiro01_direita();
		//Aumentando a espera do tiro dnv
		espera_do_tiro = delay_tiro;
	}
	
	// Fazendo o bixo ir para direita
	x += velocidade_horizontal;
	
	if(x >= 1632 || x <= 288){
		velocidade_horizontal *= -1;
		}
	
}
//====================================================================================//

// Metodo do estado 03

estado03 = function(){
	espera_do_tiro--;
	
	//Criando o tiro 2
	if(espera_do_tiro <= 0){
		tiro02();	
	
		espera_do_tiro = delay_tiro * 2;
	}
	//Criando o tiro 1
	if(espera_do_tiro == round(delay_tiro / 4)){
		tiro01_direita();
	}
	if(espera_do_tiro == delay_tiro + round(delay_tiro / 4)){
		tiro01_esquerda();
	}
	
	
}

//====================================================================================//

// Metodo estado 04

estado04 = function(){
	//Codigo estado 4	
	
	//Fazendo o boss ir para o meio da tela
	x += sign(room_width / 2 - x);
	
							sprite_index = spr_boss_ivulne;
							
							//Criando os minions 
							if(controle_minion == false){
								//Esquerda
								var _minion = instance_create_layer(128, 512, "BOSS", obj_minion);
								_minion.image_angle =  90;
								//Direita
								_minion = instance_create_layer(1824,512,"BOSS", obj_minion);
								_minion.image_angle = 270;
							
								controle_minion = true;
							}
}

//====================================================================================//

// Metodo troca de estados

troca_estados = function(){
	espera_estado--;

	if(espera_estado <= 0){
		//Escolher um estado	SE minha vida for maior que a metate
		if(vida_atual > vida_max / 2){
			estado_atual = choose("estado 1", "estado 2", "estado 3");
		}
			else if(vida_atual <= vida_max / 2){
				estado_atual = choose("estado 1", "estado 2", "estado 3", "estado 4");
		}
		//Reiniciando criação de minions
		controle_minion = false;
	
		//Fazendo o espera_estado ter um valor alto dnv
		espera_estado = delay_estado;
	}
}