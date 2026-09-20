import mensajeros.*
import paquete.*
import vehiculos.*
object empresa {
    var mensajeros = [jeanGray, neo , sara]

    method contratar(mensajero){
        mensajeros.add(mensajero)
    }
    method despedir(mensajero){
        mensajeros.remove(mensajero)
    }
    method despedirATodos(){
        mensajeros.clear()
    }
    method laEmpresaEsGrande(){
        return mensajeros.size() > 2
    }
    method puedeSerEntrgadoPor_(mensajeros, paquete){
        return paquete.puedeSerEntrgadoPor_(mensajeros[0],destino.matrix)
    }
    method peso(mensajeros){
        return mensajeros[-1].peso()
    }
}
