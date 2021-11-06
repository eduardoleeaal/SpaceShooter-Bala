/// @description Insert description here
// You can write your code in this editor

// executando o upgrade do player
	other.upgrade_p(chance);
	
	
	instance_create_layer(x, y, layer, obj_impacto_tiro);
	instance_destroy(id);