/// @description Insert description here
// You can write your code in this editor

// Checando se eu não estou no estagio 4

if(estado_atual != "estado 4"){
	//Colocando sprite de combate
	sprite_index = spr_boss_combate;
}


////////////////////////////////////////////////////////
//Alternando os estados do boss
troca_estados();
////////////////////////////////////////////////////////

// Iniciando o estado 1
if(estado_atual == "estado 1"){
	//Codigo estado 1
	estado01();
}
	else
		if(estado_atual == "estado 2"){
			//Codigo do estado 2
			estado02();
		}
			else
				if(estado_atual == "estado 3"){
					//Codigo do estado 3
					estado03();
					
				}
					else
						if(estado_atual == "estado 4"){
							//Codigo estado 4	
							estado04();
						}
						
						
						
						
					// DEBUGS
/*
// debug estado atual
//show_debug_message(estado_atual);

// DEBUG VIDA BOSS
// se eu apertar enter a vida abaixa em 10

if (keyboard_check(vk_enter)){
		vida_atual -= 10;
	
}
show_debug_message(vida_atual);
*/