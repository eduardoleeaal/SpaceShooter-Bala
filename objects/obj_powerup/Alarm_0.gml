/// @description Insert description here
// You can write your code in this editor


// Diminuir o alpha em .1
image_alpha -= 0.1;


// Destruir alarme se o alpha for menor ou igual a .5

if(image_alpha <= .2){
	instance_destroy(id, false);	
}


// Depois repetir o alarme em 1 seg

alarm[0] = room_speed;