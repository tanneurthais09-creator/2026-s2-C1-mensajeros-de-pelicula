object paquete {
    var pagar = false 
    method precio(destino){
    return destino.precio()
    }
    method pagaPaquete() {
      pagar = true
    }
    method estaPago(){
      return pagar 
    }
    method sePuedeEntregar(destino){

    }
}

object matrix {
  method precio() {
    return  500
  }
  method puedePasar_(persona){
    return  persona.llamada()
  }

}
object puenteDeBrooklyn {
  method precio() {
    return 150
  }
  method puedePasar_(persona) {
    return persona.peso() < 1000
  }
}

