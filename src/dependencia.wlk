import traffic.*
import rodados.*

class Dependencia 
{
	const flota = []
	var property empleados = 0
	const pedidos = []
	
	method setEmpleados(cantidad)
	{
		empleados = cantidad
	}
	
	method agregarAFlota(rodado)
	{
		flota.add(rodado)
	}
	
	method quitarDeFlota(rodado)
	{
		flota.remove(rodado)
	}
	
	method pesoTotalFlota()
	{
		return flota.sum({rodado => rodado.peso()})
	}
	
	method estaBienEquipada()
	{
		return flota.size() >= 3 and flota.all({rodado => rodado.velocidadMaxima() > 100}) 
	}
	
	method capacidadTotalEnColor(color)
	{
		return flota.filter({rodado => rodado.color() == color}).sum({rodado => rodado.capacidad()})
	}
	
	method colorDelRodadoMasRapido()
	{
		return flota.max({rodado => rodado.velocidadMaxima()}).color()
	}
	
	method capacidadFlota()
	{
		return flota.sum({rodado => rodado.capacidad()})
	}
	
	method  capacidadFaltante()
	{
		return empleados - self.capacidadFlota()
	}
	
	method esGrande()
	{
		return empleados >= 40 and flota.size() >= 5
	}
	
	method agregarPedido(unPedido)
	{
		pedidos.add(unPedido)
	}
	
	method quitarPedido(unPedido)
	{
		pedidos.remove(unPedido)
	}
	
	method totalPasajerosEnPedidos()
	{
		return pedidos.sum({p => p.pasajeros()})
	}
	
	method puedeSatisfacerPedido(pedido)
	{
		return flota.all({rodado => pedido.puedeLlevar(rodado)})
	}	
	
	method pedidosQueNoSePuedenLlevar()
	{
		return pedidos.filter({pedido => pedido == not self.puedeSatisfacerPedido(pedido)})
	}	
	
	method colorEsIncompatible(color)
	{
		return pedidos.any({pedido => pedido.coloresIncompatibles() == color })
	}
	
	method relajarTodos()
	{
		pedidos.forEach({pedido => pedido.relajar()})
	}
}