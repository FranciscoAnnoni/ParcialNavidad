// -- Regalos
class Regalos {
	var property precio
	var property destinatario
	
	method teQuieroMucho(umbral){
		return precio > umbral
	}
	
}

// -- Trajetas
class Tarjetas {
	var property destinatario
	var valorAdjunto
	const property precio = 2
	
	method esTarjetaCara(){
		return valorAdjunto > 1000
	}
	
}

// -- Adornos
class Adornos {
	var peso
	var coeficienteDeSuperioridad
	
	method peso(){
		return peso
	}
	
	method importancia(){
		return peso* coeficienteDeSuperioridad
	}
}

// --tipo de Adornos

class Luces inherits Adornos{
	var lamparas
	method luminocidad(){
		return lamparas
	}
	
	override method importancia(){
		return super()*self.luminocidad()
	} 
}

class Figura inherits Adornos{
	var volumen
	
	override method importancia(){
		return super() + volumen
	} 
}

class Girnaldas inherits Adornos{
	var aniosEnUso
	
	override method peso(){
		return super()- 100 * aniosEnUso //deberia haberlo hecho con fechas pero no se como devolver el año 
	}
	
}