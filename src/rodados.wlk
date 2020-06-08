import wollok.game.*
import colores.*
class Corsa 
{
	
	var property capacidad = 4
	var property velocidadMaxima = 150
	var property peso = 1300
	var property color
	var property position = game.origin()
	var property posicionesPasadas = [position]
	var property image 
	
	
	method guardarPosicion()
	{
		posicionesPasadas.add(self.position())
	}
	method pasoPor(posicion)
	{
		return self.posicionesPasadas().contains(posicion)
	}
	
	method filasPorLasQuePaso()
	{
		return posicionesPasadas.map({pos => pos.x()}).asSet()
	}
	
	method pasoPorFila(numero)
	{
		return self.filasPorLasQuePaso().contains(numero)
	}
	
	method recorrioFilas(listaDeNumeros)
	{
		return listaDeNumeros.all({n => self.pasoPorFila(n)})
	}
	
	method moverseArriba() 
	{
        self.position(self.position().up(1))
        self.guardarPosicion()
    }
    method moverseAbajo() 
	{
        self.position(self.position().down(1))
        self.guardarPosicion()
    }
    method moverseIzquierda() 
	{
        self.position(self.position().left(1))
        self.guardarPosicion()
    }
    method moverseDerecha() 
	{
        self.position(self.position().right(1))
        self.guardarPosicion()
    }
    method cambiarVerde()
    {
    	image = verde.image()
    }
    method cambiarAzul()
    {
    	image = azul.image()
    }
    
    method cambiarRojo()
    {
    	image = rojo.image()
    }
    
}

class Kwid
{
	var property tieneTanqueAdicional = true
	var property color = "azul"
	method capacidad()
	{
		return if(tieneTanqueAdicional)
		{
			3
		}
		else
		{
			4
		}
	}
	
	method velocidadMaxima()
	{
		return if (tieneTanqueAdicional)
		{
			120
		}
		else
		{
			110
		}
	}
	
	method peso()
	{
		return if (tieneTanqueAdicional)
		{
			1350
		}
		else
		{
			1200
		}
	}
}

class AutosEspeciales
{
	var property color 
	var property capacidad = 0
	var property velocidadMaxima = 0
	var property peso = 0
}
