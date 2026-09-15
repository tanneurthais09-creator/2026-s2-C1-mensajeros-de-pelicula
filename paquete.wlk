import  mensajeros.*

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
object matrix {
  method precio() {
    return  500
  }
  method puedePasar_(mensajero){
    return  mensajero.llamada()
  }

}
object puenteDeBrooklyn {
  method precio() {
    return 150
  }
  method puedePasar_(mensajero) {
    return mensajero.peso() < 1000
  }
}

