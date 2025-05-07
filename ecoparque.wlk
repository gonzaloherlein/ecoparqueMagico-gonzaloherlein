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
            trabajador => habitante.puedeSerCuidadoPor(trabajador)
        })
    }

    method obtenerATodosLosQuePuedenCuidarA_(habitante){
        return trabajadores.filter({
            trabajador => habitante.puedeSerCuidadoPor(trabajador)
        })
    }

    method cuidarDeUnHabitanteElegido(habitante){
        return trabajadores.find({
            trabajador => habitante.puedeSerCuidadoPor(trabajador)
        })
    }

    method cuidarDeTodosLosAnimales(){
        return criaturas.forEach({
            criatura => criatura.asignarCuidador(self.cuidarDeUnHabitanteElegido(criatura))
        })
    }

    method pasarElDia(){
        self.cuidarDeTodosLosAnimales()
        return criaturas.forEach({
            criatura => criatura.dormir()
        })
    }

    method encontrarHabitanteMasViejo(){
        return criaturas.max({
            criatura => criatura.edad()
        })
    }

    method encontrarHabitanteMasJoven(){
        return criaturas.min({
            criatura => criatura.edad()
        })
    }

    method realizarTallerDeNatacion(){
        const cantDeTrabajadoresQueSabenNadar = trabajadores.count({
            trabajador => trabajador.nadar()
        })
        if(cantDeTrabajadoresQueSabenNadar >= (trabajadores.size() / 2)){
            trabajadores.forEach({
                trabajador => trabajador.aprenderANadar()
            })
        }
    }

    method realizarTallerDeResistenciaAlFuego(){
        const algunTrabajadorTiene10AniosDeExp = trabajadores.any({
            trabajador => trabajador.experiencia() > 10
        })
        if(algunTrabajadorTiene10AniosDeExp){
            trabajadores.forEach({
                trabajador => trabajador.aprenderAResistirAlFuego()
            })
        }
    }
}