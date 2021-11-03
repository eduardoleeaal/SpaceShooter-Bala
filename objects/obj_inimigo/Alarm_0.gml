/// @description Insert description here
// You can write your code in this editor


// Faz com que o inimigo só atire após entrar na tela
if (y >= 0){
instance_create_layer(x, y + sprite_height/2, "Tiros", obj_tiro_inimigo);
}



// reiniciando o alarme a cada 2 seg
alarm[0] = room_speed * random_range(1, 3);