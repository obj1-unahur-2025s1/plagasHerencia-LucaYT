class Plaga{
    var poblacion
    method puedeTransmitir(){return poblacion >= 10 && self.condicionAdicional()}
    method condicionAdicional() //Hace que si instancias un método sin cuerpo, se vuelve abstracto, y si es abstracto, NO se utiliza la clase, en este caso "Plaga", en ningún momento.
    method daño(){return poblacion}
}

class Cucarachas inherits Plaga{
    var pesoPromedio
    override method daño(){return super() / 2}
    override method condicionAdicional(){return pesoPromedio > 10}
}

class Pulgas inherits Plaga{
    override method daño(){return super() * 2}
}

class Garrapatas inherits Pulgas{
}

class Mosquito inherits Plaga{
    override method condicionAdicional(){return poblacion % 3 == 0}
}