/// @description Herdou o codigo do pai
// You can write your code in this editor

// Inherit the parent event
event_inherited();


// Definindo a velocidade do tiro inimigo2
speed = 6;


// Checando se o player existe
if (instance_exists(obj_player)){

	// Achando a direção para onde o tiro deve ir
	// Indo para aquela direção
	direction = point_direction(x, y, obj_player.x, obj_player.y);
}
// Arrumando a direção dela

image_angle = direction + 90;