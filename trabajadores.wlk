object rodrigo {
    var turnoDeManiana = true
    var tutor = german
    var nadar = false
    var resisteAltasTemperaturas = false

    method cambiarTutor(nuevoTutor){
        tutor = nuevoTutor
    }

    method nadar(){
        if(tutor.nadar()){
            nadar = true
        }
        return nadar
    }

    method resisteAltasTemperaturas() = resisteAltasTemperaturas

    method cambiarTurno(){
        turnoDeManiana = !turnoDeManiana
    }

    method turnoDeManiana() = turnoDeManiana
    
    method experiencia() = 0

    method aprenderANadar(){
        nadar = true
    }
    method aprenderAResistirAlFuego(){
        resisteAltasTemperaturas = true
    }
}


object laura {
    var nadar = false
    var resisteAltasTemperaturas = true
    method experiencia() = 2
    method turnoDeManiana() = false
    method resisteAltasTemperaturas() = resisteAltasTemperaturas 
    method nadar() = nadar 

    method aprenderANadar(){
        nadar = true
    }
    method aprenderAResistirAlFuego(){
        resisteAltasTemperaturas = true
    }
}

object german {
    var nadar = true
    var resisteAltasTemperaturas = true
    method turnoDeManiana() = true
    method experiencia() = 15
    method resisteAltasTemperaturas() = resisteAltasTemperaturas
    method nadar() = nadar
    method aprenderANadar(){
        nadar = true
    }
    method aprenderAResistirAlFuego(){
        resisteAltasTemperaturas = true
    }
}

object jimena {
    var tieneTrajeIgnifugo = true
    var nadar = true
    var resisteAltasTemperaturas = false
    method turnoDeManiana() = false
    method nadar() = nadar
    method tieneTrajeIgnifugo() = tieneTrajeIgnifugo
    method experiencia() = 8
    method sacarTrajeIgnifugo(){
        tieneTrajeIgnifugo = false
    }

    method resisteAltasTemperaturas(){
        if(self.tieneTrajeIgnifugo()){
            resisteAltasTemperaturas = true
        }
        return resisteAltasTemperaturas
    }
    method aprenderANadar(){
        nadar = true
    }

    method aprenderAResistirAlFuego(){
        resisteAltasTemperaturas = true
    }
}