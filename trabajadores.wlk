object rodrigo {
    var turnoDeManiana = true
    var tutor = german

    method cambiarTutor(nuevoTutor){
        tutor = nuevoTutor
    }

    method nadar(){
        var puedeNadar = false
        if(tutor.nadar()){
            puedeNadar = true
        }
        return puedeNadar
    }

    method resisteAltasTemperaturas() = false

    method cambiarTurno(){
        turnoDeManiana = !turnoDeManiana
    }

    method turnoDeManiana() = turnoDeManiana
    
    method experiencia() = 0
}


object laura {
    method experiencia() = 2
    method turnoDeManiana() = false
    method resisteAltasTemperaturas() = true 
    method nadar() = false 

}

object german {
    method turnoDeManiana() = true
    method experiencia() = 15
    method resisteAltasTemperaturas() = true
    method nadar() = true
}

object jimena {
    var tieneTrajeIgnifugo = true
    method turnoDeManiana() = false
    method nadar() = true
    method tieneTrajeIgnifugo() = tieneTrajeIgnifugo
    method experiencia() = 8
    method sacarTrajeIgnifugo(){
        tieneTrajeIgnifugo = false
    }

    method resisteAltasTemperaturas(){
        var resisteAltasTemp = false
        if(self.tieneTrajeIgnifugo()){
            resisteAltasTemp = true
        }
        return resisteAltasTemp
    }
}