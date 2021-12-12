/// @description Insert description here
// You can write your code in this editor


if(image_index > 0){
	image_index--;
	// Diminuindo a opacidade
	image_alpha -= .2;
}
	else{
		instance_destroy(id);
	}

alarm[0] = room_speed * 2;