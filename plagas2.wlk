class Plaga{
    var poblacion
    method puedeTransmitir(){return poblacion >= 10 && self.condicionAdicional()}
    method condicionAdicional() //Hace que si instancias un método sin cuerpo, se vuelve abstracto, y si es abstracto, NO se utiliza la clase, en este caso "Plaga", en ningún momento.
    method daño(){return poblacion}
    method efectoDeAtaque(){poblacion *= 1.1}
    method plagaAtaca(unElemento){
        unElemento.plagaAtaca(self) //Se utiliza self al ser de la misma clase, o sea, no se pone "unaPlaga" y se pone "self" porque se está usando en Plaga, se llama a sí mismo y funciona
        self.efectoDeAtaque()
    }
}

class Cucarachas inherits Plaga{
    var pesoPromedio
    override method daño(){return super() / 2}
    override method condicionAdicional(){return pesoPromedio > 10}
    override method efectoDeAtaque(){
        super()
        pesoPromedio += 2
    }
}

class Pulgas inherits Plaga{
    override method daño(){return super() * 2}
    override method condicionAdicional() = true
}

class Garrapatas inherits Pulgas{
    override method efectoDeAtaque(){
        poblacion *= 1.2
    }
}

class Mosquito inherits Plaga{
    override method condicionAdicional(){return poblacion % 3 == 0}
}

class Caracoles inherits Plaga{
    override method puedeTransmitir(){return clima.llovio()}
}

object clima{
    var property llovio = true
}