/// @description Melhorar o tiro
// You can write your code in this editor


// Desenhar o tiro

draw_self();

gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_brilho_inimigo1, image_index, x, y, image_xscale * .5, image_yscale * .5, image_angle, cores, 0.2);
gpu_set_blendmode(bm_normal);