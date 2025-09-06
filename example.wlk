object paquete{
    var pago = false 
    var destino = null
    var persona = null
	method pagar(){
		pago = true //tendria que un metodo que haga falso el pago
	}
  method destino(direccion){
    destino = direccion
  }
  method mensajero(_persona)  {
    persona = _persona
  }
	method estado() = pago
	method puedeSerEntregado(){
		return pago && destino.puedePasar(persona)
	}
}



object puenteBrooklyn{
  var pasa = false //esta variable puede no existir
    method puedePasar(persona){
        pasa = persona.peso() <= 1000
        return pasa
    }
    /*method puedePasar(){
        return pasa
    }*/
}

object laMatrix{
    method puedePasar(persona){
        return persona.puedeLlamar()
    }
    /*method puedePasar(){
        return self.puedeLlamar(persona)
    }
*/
}

object jeanGray {
    const  kilaje = 65 
    method puedeLlamar(){
        return true 
    }
	method peso() {
	  return kilaje
	}

}

object neo {
    const kilaje = 0
    var credito = false 
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
  var kilaje = 0
  const sara = 70
  method calcularPeso(vehiculo){
     kilaje = 0 
     kilaje = kilaje + vehiculo.peso()
  }
  method puedeLlamar() = false
  method peso() = kilaje + sara
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
  }
  method peso(){
	return peso + peso*acoplados
  }
}