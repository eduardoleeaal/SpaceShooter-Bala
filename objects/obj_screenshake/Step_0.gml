/// @description Insert description here
// You can write your code in this editor


// Movendo a tela

view_xport[0] = random_range(-shake, shake);
view_yport[0] = random_range(-shake, shake);

// diminuindo o valor do shake

shake *= .85;

// SE o valor do shake for menor que 0.5 ele se destroi

if (shake < 0.5){
	instance_destroy();
}