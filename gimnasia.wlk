class Rutina {
  var property descanso
  var property intensidad
  
  method caloriasQueConsume(
    tiempo
  ) = (100 * (tiempo - self.descanso())) * self.intensidad()
}

class Running inherits Rutina {
  override method caloriasQueConsume(tiempo) {
    if (tiempo > 20) {
      return (100 * (tiempo - 5)) * self.intensidad()
    } else {
      return (100 * (tiempo - 2)) * self.intensidad()
    }
  }
}

class Maraton inherits Running {
  override method caloriasQueConsume(tiempo) {
    if (tiempo > 20) {
      return ((100 * (tiempo - 5)) * self.intensidad()) * 2
    } else {
      return ((100 * (tiempo - 2)) * self.intensidad()) * 2
    }
  }
}

class Remo inherits Rutina {
  override method caloriasQueConsume(
    tiempo
  ) = (100 * (tiempo - (tiempo / 5))) * 1.3
}

class RemoDeCompeticion inherits Remo {
  
}

class Persona {
  
}