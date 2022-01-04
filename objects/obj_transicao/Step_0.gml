/// @description Insert description here
// You can write your code in this editor

//Deixando a tela escura se eu não troquei de room
if(!troquei_de_room){
	alpha += 0.03;
	}
	else{
		alpha -= 0.03;
	}

	if(troquei_de_room == true && alpha < 0){
		instance_destroy();
	}
	
//Checar se a tela esta totalmente escura
	if(alpha >= 1 && troquei_de_room == false){
	// Mudar de room
	room_goto(destino);
	
	}
	
