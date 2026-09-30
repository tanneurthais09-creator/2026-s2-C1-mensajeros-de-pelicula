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
