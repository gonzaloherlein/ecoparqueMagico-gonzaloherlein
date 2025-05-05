import trabajadores.* 
import habitantes.* 

object ecoparque {
    const trabajadores = #{german,laura,jimena}
    const criaturas = #{dragon,unicornio,sirena,fenix,gargola}

    method trabajadores() = trabajadores

    method contratarTrabajador(nuevoTrabajador){
        trabajadores.add(nuevoTrabajador)
    }

    method despedirTrabajador(trabajadorADespedir){
        trabajadores.remove(trabajadorADespedir)
    }

    method despedirATodosLosTrabajadores(){
        trabajadores.clear()
    }

    method elEquipoEsGrande(){
        return trabajadores.size() > 3
    }

    method seNecesitaTrabajadores(){
        return trabajadores.isEmpty()
    }

    method habitantePuedeSerCuidado(habitante){
        return trabajadores.any({
            trabajador => habitante.asignarCuidador(trabajador)
        })
    }
}