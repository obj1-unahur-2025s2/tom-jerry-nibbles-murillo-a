object tom {
  var energia = 50
  
  method energia() = energia
  
  method comer(unRaton) {
    energia = 1000.min((energia + 12) + unRaton.peso())
    //ej nunca puede tener mas de 100 energia:
    //energia = 100.min(energia + 12 + raton.peso())
    unRaton.serComido()
  }
  
  method correr(unaDistancia) {
    energia = (energia - (unaDistancia / 2)).max(0)
    // o asi 0.max(energia - distancia / 2)
  }
  
  method velocidadMaxima() = 5 + (energia / 10)
  
  method puedeCazar(unaDistancia) = energia >= (unaDistancia / 2)
  
  method cazar(unRaton, unaDistancia) {
    if (self.puedeCazar(unaDistancia)) {
      self.correr(unaDistancia)
      self.comer(unRaton)
    }
  }
}

object jerry {
  var edad = 2
  
  method peso() = edad * 20
  
  method cumplirAnios() {
    edad += 1
  }
  
  method serComido() {
    
  }
}

object nibbles {
  method peso() = 35
  
  method serComido() {
    
  }
} // Inventar otro ratón

object bizcocho {
  var estaSeco = true
  
  method peso() {
    if (estaSeco) {
      return 20
    } else {
      return 30
    }
  }
  
  method serComido() {
    estaSeco = false
  }
} // Inventar otro ratón