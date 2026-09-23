import mensajeros.*
import vehiculos.*
import destino.*
import empresa.*
object paquete {
    var property destino = matrix
    var pago = false 
    method precio(){
    return 50
    }
    method pagaPaquete() {
      pago = true
    }
    method estaPago(){
      return pago 
    }
    method sePuedeEntregar(mensajero){
      return self.estaPago() && self.destino().puedePasar_(mensajero)
    }
    method enviar(){
      true 
    }
    method destino(){
      return destino
    }
}
object paquetito {
  var property destino = matrix
  method estaPago(){
    return true
  }
  method precio(){
    return 0
  }
  method sePuedeEntregar(mensajero){
    return true
  }
  method enviar(){
      true 
    }
  method destino(){
      return destino
  }
}
object paqueton{
  const property destinos = []
  var property monto = 0
  
  method estaPago(){
    return self.precio() ==  monto
  }
  
  method pagar(montoDestino){
    monto += montoDestino 
  }
  method precio(){
    return 100 * destinos.size() 
  }
  method agregarDestino(destino){
    destinos.add(destino)
  }
  method sePuedeEntregar(mensajero){
    return self.estaPago() && destinos.all({destino  => destino.puedePasar_(mensajero)}) 
  }
  method enviar(){
      true 
    }
  method destino(){
    return destinos
  }
}

