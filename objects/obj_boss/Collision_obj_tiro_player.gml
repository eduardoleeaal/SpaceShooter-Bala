/// @description Insert description here
// You can write your code in this editor


// Perde 1 de vida SE não estiver no estado 4
if(estado_atual != "estado 4"){
	if(vida_atual > 0){
		vida_atual--;
	}
	else{
		instance_destroy();
	}

	instance_destroy(other);
}