object paquete{
    var pago = false 
	method pagar(){
		pago = true
	}
	method estado() = pago
	method puedeSerEntregado(){
		
	}
}



object puenteBrooklyn{
    method puedePasar(kilosPersona){
        return not kilosPersona <= 1000
    }
}

object laMatrix{
    method puedeLlamar(persona){
        return persona.puedeLlamar 
    }


}

object jeanGray {
    var  kilaje = 65 
    method puedeLlamar(){
        return true 
    }
	method peso() {
	  return kilaje
	}

}

object Neo {
    var kilaje = 0
    var credito = true 
    method puedeLlamar(){
        return credito 
    }
	method tieneCredito(siono){
		credito = siono
		return credito
	}
	method peso(){
		return kilaje
	}
}

object saraConnor {
  method calcularPeso(vehiculo){
    return 60 + vehiculo.peso()
  }
  method puedeLlamar() = false
}
object moto {
  const kilaje = 100
  method peso() = kilaje 
}
object camion {
  const peso = 500
  var acoplados = 0
  method cantidadAcoplados(numeroAcoplados){
	acoplados = numeroAcoplados
	return acoplados
  }
  method peso(){
	return peso + peso*acoplados
  }
}