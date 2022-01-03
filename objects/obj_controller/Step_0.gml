/// @description Insert description here
// You can write your code in this editor

// Checando se o player não existe e se eu ainda não criei minha seq

if((!instance_exists(obj_player)) && (gameover_seq == noone) && (!level_completo)){
	
	//criando apenas uma sequence
	gameover_seq = layer_sequence_create("sequences", room_width * .5, room_height * .5, sq_gameover);
}
