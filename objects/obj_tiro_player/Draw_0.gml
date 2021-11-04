/// @description Desenho
// You can write your code in this editor


//ELE DESENHA POR ORDEM 
// QUAL COMANDO VIR PRIMEIRO FICA POR BAIXO

// Objeto se desenhar
draw_self()

// Alterando como o video trata as cores
gpu_set_blendmode(bm_add);
// Desenhar a sprite do brilho por cima dela
draw_sprite_ext(brilho, image_index, x, y, image_xscale * .4, image_yscale * .5, image_angle, cores, 0.4);
// Voltando o video ao norma
gpu_set_blendmode(bm_normal);