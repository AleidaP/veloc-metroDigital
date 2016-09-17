//: Velocímetro de un automóvil

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadaBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
}


class Auto {
    var velocidad : Velocidades
    
    init() {
        self.velocidad = Velocidades(velocidadInicial : Velocidades.Apagado)
    }
    
    func cambioDeVelocidad() -> (actual :  Int, velocidadEnCadena: String) {
        var leyenda : String
        let actual : Int = self.velocidad.rawValue
        
        switch self.velocidad {
        case Velocidades.Apagado:
            self.velocidad = Velocidades.VelocidadaBaja
            leyenda = "Apagado"
            break
        case Velocidades.VelocidadaBaja:
            self.velocidad = Velocidades.VelocidadMedia
            leyenda = "Velocidad Baja"
            break
        case Velocidades.VelocidadMedia:
            self.velocidad = Velocidades.VelocidadAlta
            leyenda = "Velocidad Media"
            break
        case Velocidades.VelocidadAlta:
            self.velocidad = Velocidades.VelocidadMedia
            leyenda = "Velocidad Alta"
            break
        }
        
        return (actual : actual, velocidadEnCadena:leyenda)
    }
}

var auto = Auto()
for i in 0 ..< 20 {
    var tupla = auto.cambioDeVelocidad()
    print(tupla);
}