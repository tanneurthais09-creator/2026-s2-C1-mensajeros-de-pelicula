import vehiculos.*
object jeanGray {
  method peso(){
    return 65 
  }
  method llamada() {
    return false
  }
}
object neo {
    var property credito = 1
    method peso(){
        return 0
    }
    method llamda(){
        return credito > 10
    }
}
object sara {
    var property peso = 70
    var property  vehiculo = moto 
    method peso(){
        return peso + vehiculo.peso()
    }
    method llamada(){
        return false
    }
}
