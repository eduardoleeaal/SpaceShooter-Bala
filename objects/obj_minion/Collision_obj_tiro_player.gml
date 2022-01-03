/// @description Insert description here
// You can write your code in this editor



// Se o minion tiver mais que 0 de vida, 10 de vida ou menos de 10 ele perde vida se toma tiro
if(vida_minion <= 10 && vida_minion > 0){
	vida_minion--;

	instance_destroy(other);
}