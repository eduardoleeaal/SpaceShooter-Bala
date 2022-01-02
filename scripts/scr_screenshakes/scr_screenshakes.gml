// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_screenshakes(_shake){
	// Criando o screen shake
	var screen = instance_create_layer(0, 0, "Efeitos", obj_screenshake);
	screen.shake = _shake;
}