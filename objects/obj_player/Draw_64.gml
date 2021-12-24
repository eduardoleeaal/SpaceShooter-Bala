/// @description Mostrando vida do player
// You can write your code in this editor


var altura_hud = display_get_gui_height();


// desenhando as vidas
// desenhar a quantidade de naves representando as vidas
// repetindo o desenho na quantidade de vida q eu tenho

// desenhando uma vida do lado da outra
var controle = 0;
var espaco = 55;

repeat(vida){
	// primeira --> 35 + 55 * 0 = 35 
	// segunda	--> 35 + 55 * 1 = 90
	// terceira --> 35 + 55 * 2 = 145
	draw_sprite_ext(spr_player, 0, 35 + espaco * controle, altura_hud - 40, .4, .4, 0, c_white, .3);
	controle++;
}