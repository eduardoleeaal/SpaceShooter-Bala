// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_screenshakes(_shake){
	// Criando o screen shake
	var screen = instance_create_layer(0, 0, "Efeitos", obj_screenshake);
	screen.shake = _shake;
}


function scr_destroi_seq(){
	var elementos = layer_get_all_elements("BOSS_ENTRANDO");
	layer_sequence_destroy(elementos[0]);
	
	instance_create_layer(966, 276, "Boss", obj_boss);
}

function scr_cria_seq(){
	if(instance_exists(obj_player)){
		layer_sequence_create("Sequences", obj_player.x, obj_player.y, sq_final_game_player);
	}
	
	
	instance_destroy(obj_player, false);
	
	
	//Impedindo o game over
	if(instance_exists(obj_controller)){
		obj_controller.level_completo = true;
	}

}