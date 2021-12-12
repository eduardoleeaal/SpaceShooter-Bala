/// @description Animação suave para tiro
// You can write your code in this editor


image_xscale = lerp(image_xscale, 1, 0.3);
image_yscale = lerp(image_yscale, 1, 0.3);


// Destruindo o tiro em colisão com o escudo

if(place_meeting(x, y, obj_escudo)){
	instance_destroy();	
	
}