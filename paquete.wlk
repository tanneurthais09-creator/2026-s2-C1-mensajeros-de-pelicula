import  mensajeros.*
import vehiculos.*
import destino.*
object paquete {
    var pago = false 
    method precio(destino){
    return destino.precio()
    }
    method pagaPaquete() {
      pago = true
    }
    method estaPago(){
      return pago 
    }
    method sePuedeEntregar(mensajero,destino){
      return self.estaPago() && destino.puedePasar_(mensajero)
    }

}
object paquetito {
  method precio(destino){
    return 0
  }
  method sePuedeEntrgar(mensajero,destino){
    return true
  }
}
object paqueteViajero{
  var destino = []
  method estaPago(){
    return true
  }
  method precio(destino){
    return 100 * destino.size() 
  }
  method sePuedeEntrgar(mensajero,destino){
    return 
  }
}

