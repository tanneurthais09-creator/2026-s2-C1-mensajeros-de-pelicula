object moto {
  method peso() {
    return 100
  }
}
object camion {
  method peso() {
    return 500
  }
}
object camionConAcoplados {
    var property  acoples = 0
    method peso(){
        return 500 + (500* acoples) 
    }
}