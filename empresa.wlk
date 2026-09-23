import mensajeros.*
import paquete.*
import vehiculos.*
object empresa {
    const mensajeros = []
    const  property paquetesPendientes = []
    const paquetesEntregados = []
    
    method mensajeros(){
        return mensajeros
    }
    method contratar(mensajero){
        return if (!mensajeros.contains(mensajero)){
            mensajeros.add(mensajero)
        }
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
    method puedeSerEntregadoPorElPrimerEmpleado(paquete){
        return paquete.sePuedeEntregar(mensajeros.first())
    }
    method pesoDelUltimoMensajero(){
        return mensajeros.last().peso()
    }
    method puedeSerEntregadoPorAlguno(paquete){
        return mensajeros.any({mensajero => paquete.sePuedeEntregar(mensajero)})
    }
    method quienPuedeEntregar(paquete){
        return mensajeros.filter({mensajero => paquete.sePuedeEntregar(mensajero)})
    }
    method tieneSobrepeso(){
        return mensajeros.sum({mensajero => mensajero.peso()}) / mensajeros.size() > 500 
    }    
    method entregar(paquete){
        if (mensajeros.any({ mensajero => paquete.sePuedeEntregar(mensajero) })){
            paquetesEntregados.add(paquete)
        }else {
            paquetesPendientes.add(paquete)
        }
    } 
    method facturacion(){
        return paquetesEntregados.sum({paquete=> paquete.precio()})
    }
    method entregarPorConjunto(conjuntoDePaquete){
        conjuntoDePaquete.forEach({paquete => paquete.sePuedeEntregar( self.quienPuedeEntregar(paquete))})
    }
    method paquetesPendientes(){
        return paquetesPendientes
    }
    method paquetesEntregados(){
        return paquetesEntregados
    }
    method elMasCaroDeLosPaquetesPendientes(){
       return paquetesPendientes.max({paquete => paquete.precio()})
    }
    method entregarElPaquetePendienteMasCaro(){
        const paqueteMasCaro =self.elMasCaroDeLosPaquetesPendientes()
        self.entregar(paqueteMasCaro)
        paquetesPendientes.remove(paqueteMasCaro)
        return paqueteMasCaro
        
    }

}