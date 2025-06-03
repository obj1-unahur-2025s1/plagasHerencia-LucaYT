class Plaga{
    var poblacion
    method puedeTransmitir(){return poblacion >= 10}
    method daño(){return poblacion}
}

class Cucarachas inherits Plaga{
    var pesoPromedio
    override method daño(){return super() / 2}
    override method puedeTransmitir(){return super() && pesoPromedio > 10}
}

class Pulgas inherits Plaga{
    override method daño(){return super() * 2}
}

class Garrapatas inherits Pulgas{
}

class Mosquito inherits Plaga{
    override method puedeTransmitir(){return super() && poblacion % 3 == 0}
}