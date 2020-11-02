import cosas.*
//-- ArbolNabidenio
class ArbolNavidenio{
	
	var regalos =[]
	var tarjetas =[]
	var adornos = []
	var umbral 
	
	method capacidadDeRegalos(){ return 0 }
	
	method agregarRegalo(regalo){
		if(self.capacidadDeRegalos() > self.cantidad()){
			regalos.add(regalo)
		}else {throw new Exception(message = "se alcanzo la capacidad maxima")}
	}
	
	method agregarAdorno(adorno){
		if(self.capacidadDeRegalos() > self.cantidad()){
			adornos.add(adorno)
		}else {throw new Exception(message = "se alcanzo la capacidad maxima")}
	}
	method agregarTarjeta(tarjeta){
		if(self.capacidadDeRegalos()> self.cantidad()){
			tarjetas.add(tarjeta)
		}else {throw new Exception(message = "se alcanzo la capacidad maxima")}
	}
	
	method cantidad(){
		return regalos.size() + adornos.size()
	}
	
	method conocerBeneficiarios(){
		return regalos.forEach({regalo => regalo.destinatario()}) + tarjetas.forEach({tarjeta => tarjeta.destinatario()})
	}
	
	method costoTotal(){
		return regalos.sum({regalo => regalo.precio()}) + tarjetas.sum({regalo => regalo.precio()})
	}
	
	method calculoUmbral(){
	   return  regalos.sum({regalo => regalo.precio()}) / regalos.size()
	}
	
	method esPortentoso(){
	    const regalosTeQuieroMucho = regalos.filter({regalo => regalo.teQuieroMucho(self.calculoUmbral())}).size()
		const hayTarjetaCara = tarjetas.any({tarjeta => tarjeta.esTarjetaCara()})
		return regalosTeQuieroMucho > 5 or hayTarjetaCara
	}
	
	method adornoPesado(){
			return adornos.max({adorno => adorno.peso()})
	}
	
}

// -- clases de arboles 

class ArbolesNaturales inherits ArbolNavidenio {
	var vejez
	var tamanioDeSuTronco
	
	override method capacidadDeRegalos(){
		return vejez*tamanioDeSuTronco
	} 

}


class ArbolesArtificales inherits ArbolNavidenio{
	var varas
	
	override method capacidadDeRegalos(){
		return varas
	}

}







