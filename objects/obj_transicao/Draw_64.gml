/// @description Insert description here
// You can write your code in this editor


//Desenhando um retangulo preto na tela


//Desenhando o retangulo com valor do meu alpha
draw_set_alpha(alpha);


// Pegando informações do drawgui
var x2 = display_get_gui_width();
var y2 = display_get_gui_height()
//Deixando o retangulo preto
draw_set_color(c_black);


draw_rectangle(0, 0,x2, y2, false);



draw_set_alpha(1);
draw_set_color(c_white);