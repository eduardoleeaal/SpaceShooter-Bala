/// @description Geração de inimigos
// You can write your code in this editor

show_debug_message("oi");

// Fazendo eles nascerem em lugares aleatorios

var posx = irandom_range(32, 1888);
var posy = irandom_range(-96, -1280);


instance_create_layer(posx, posy, "inimigos", obj_inimigo);




alarm[0] = room_speed * 1;