import trabajadores.*

object dragon {
  var temperaturaCorporal = 200
  var cuidadorAsignado = null

  method puedeSerCuidadoPor(cuidador){
    var puedeSerCuidado = false
    if(cuidador.resisteAltasTemperaturas()){
      puedeSerCuidado = true
    }
    return puedeSerCuidado
  }

  method asignarCuidador(cuidador){
    if(self.puedeSerCuidadoPor(cuidador)){
      cuidadorAsignado = cuidador
    }
  }

  method cuidadorAsignado() = cuidadorAsignado

  method edad() = 90

  method esDiurno() = true

  method alimentar(){
    temperaturaCorporal += 20
  }

  method entrenar(){
    if(temperaturaCorporal >= 100){
      temperaturaCorporal = (temperaturaCorporal - 40).max(0)
    }
  }
  method dormir(){
    temperaturaCorporal = 200
  }

  method esJoven(){
    var esJoven = false
    if(self.edad() < 100){
      esJoven = true
    }
    return esJoven
  }
}

object unicornio {
  var estaFeliz = true
  var poderMagico = 3
  var cuidadorAsignado = null

  method puedeSerCuidadoPor(cuidador) = true


  method asignarCuidador(cuidador){
    cuidadorAsignado = cuidador
  }

  method cuidadorAsignado() = cuidadorAsignado

  method edad() = 30

  method esDiurno() = true

  method alimentar(){
    poderMagico += 1
  }

  method entrenar(){
    if(poderMagico > 5){
      estaFeliz = true
    }
  }

  method dormir(){
    estaFeliz = !estaFeliz
  }

  method esJoven(){
    var esJoven = false
    if(self.edad() < 50){
      esJoven = true
    }
    return esJoven
  }
}

object sirena {
  var habilidadAcuatica = 40
  var cuidadorAsignado = null

  method puedeSerCuidadoPor(cuidador){
    var puedeSerCuidado = false
    if(cuidador.nadar()){
      puedeSerCuidado = true
    }
    return puedeSerCuidado
  }

  method asignarCuidador(cuidador){
    if(self.puedeSerCuidadoPor(cuidador)){
      cuidadorAsignado = cuidador
    }
  }

  method cuidadorAsignado() = cuidadorAsignado

  method edad() = 60

  method esDiurna() = false

  method alimentar(){
    habilidadAcuatica += (habilidadAcuatica / 2)
  }

  method nadar(unaDistancia){
    habilidadAcuatica = (habilidadAcuatica - unaDistancia).max(0)
  }

  method practicarParaLaBatalla(){
    habilidadAcuatica = (habilidadAcuatica - 20).max(0)
  }

  method entrenar(){
    const cantidadDeMetros = habilidadAcuatica / 2
    self.nadar(cantidadDeMetros)
    self.practicarParaLaBatalla()
  }

  method dormir(){
    habilidadAcuatica = 40
  }

  method esJoven(){
    var esJoven = false
    if(self.edad() < 45){
      esJoven = true
    }
    return esJoven
  }

  
}

object fenix {
  var edad = 180
  var pelajeReluciente = true 
  var cuidadorAsignado = null

  method pelajeReluciente() = pelajeReluciente

  method puedeSerCuidadoPor(cuidador){
    var puedeSerCuidado = false
    if(cuidador.resisteAltasTemperaturas() && cuidador.experiencia() > 5){
      puedeSerCuidado = true
    }
    return puedeSerCuidado
  }


  method asignarCuidador(cuidador){
    if(self.puedeSerCuidadoPor(cuidador)){
      cuidadorAsignado = cuidador
    }
  }

  method cuidadorAsignado() = cuidadorAsignado

  method esDiurna(){

  }

  method energia(){
    if(pelajeReluciente){
      return edad
    }else{
      return edad / 2
    }
  }

  method esPichon(){
    var esPichon = false
    if(edad < 5){
      esPichon = true
    }
    return esPichon
  }

  method alimentar(){
    if(self.esPichon()){
      edad += 1
    }else{
      pelajeReluciente = true
    }
  }

  method entrenar(){
    if(!self.esPichon()){
      edad = edad * 0.10
      pelajeReluciente = false
    }
  }

  method dormir(){
    pelajeReluciente = false
    if(edad > 200){
      edad = 1
    }
  }

  method esJoven(){
    var esJoven = false
    if(edad < 150){
      esJoven = true
    }
    return esJoven
  }

  method edad() = edad
}

object gargola {
  var edad = 15
  var estadoVivo = true
  var cuidadorAsignado = null


  method puedeSerCuidadoPor(cuidador){
    var puedeSerCuidado = false
    if(!cuidador.turnoDeManiana() && estadoVivo){
      puedeSerCuidado = true
    }
    return puedeSerCuidado
  }

  method asignarCuidador(cuidador){
    if(self.puedeSerCuidadoPor(cuidador)){
      cuidadorAsignado = cuidador
    }
  }

  method cuidadorAsignado() = cuidadorAsignado

  method esDiurna() = false

  method alimentar(){

  }

  method entrenar(){
    edad = (edad - 1).max(0)
    estadoVivo = false
  }

  method dormir(){
    edad += 5
  }

  method esJoven() = true

  method edad() = edad
}