/// @description Rodo depois do player
// You can write your code in this editor


// Voce vai ter q ficar na mesma posição que o seu alvo

// Se o seu alvo for none se mata

if(alvo == noone or !instance_exists(alvo)){
	instance_destroy();	
}

// Conferir se o alvo existe

x = alvo.x;
y = alvo.y;
