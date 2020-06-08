object trafic 
{
	var property interior = interiorPopular
	var property motor = motorBataton
	var property peso = 4000 + motor.peso() + interior.peso()
	var property color = "blanco"
	var property capacidad = interior.capacidad()
	var property velocidadMaxima = motor.velocidadMaxima()
}	

object interiorPopular
{
	var property peso = 1000
	var property capacidad = 12
}

object interiorComodo
{
	var property peso = 700
	var property capacidad = 5
}

object motorPulenta
{
	var property peso = 800
	var property velocidadMaxima = 130
}

object motorBataton
{
	var property peso = 500
	var property velocidadMaxima = 80
}