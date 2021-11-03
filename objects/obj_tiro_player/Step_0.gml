/// @description Escala do tiro
// You can write your code in this editor


// Diminuindo a escala do tiro

image_xscale = lerp(image_xscale, 1, 0.3);		//lerp(valorQueEuTenho, valorParaChegar, porcentagemDeAproximação);
image_yscale = lerp(image_yscale, 1, 0.3);		//é basicamente uma função de aproximação
												// Vai ser usada para fazer uma animação mais suave