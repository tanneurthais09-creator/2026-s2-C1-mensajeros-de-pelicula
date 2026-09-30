import vehiculos.*
object jeanGray {
  method peso(){
    return 65 
  }
  method llamada() {
    return true 
  }
}
object neo {
    var property credito = true
    method peso(){
        return 0
    }
    method llamada(){
        return credito
        
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
object trinily{
    var property peso = 65
    var property  vehiculo = moto 
    method peso(){
        return peso + vehiculo.peso()
    }
    method llamada(){
       return true
    }
}
