import trabajadores.* 
import habitantes.* 

object ecoparque {
    const trabajadores = #{german,laura,jimena}
    const criaturas = #{dragon,unicornio,sirena,fenix,gargola}

    method contratarTrabajador(nuevoTrabajador){
        trabajadores.add(nuevoTrabajador)
    }

    method despedirTrabajador(trabajadorADespedir){
        trabajadores.remove(trabajadorADespedir)
    }
}