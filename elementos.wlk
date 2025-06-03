class Hogar {
    var mugre
    const confort
    method esBueno(){return mugre / 2 <= confort}
    method plagaAtaca(unaPlaga){mugre += unaPlaga.daño()}
}

class Huerta {
    var produccion
    method esBueno(){return produccion > nivelMinimo.valor()}
    method plagaAtaca(unaPlaga){produccion -= 0.max(unaPlaga.daño() * 0.1 + if(unaPlaga.puedeTransmitir()) 10 else 0)}
}

object nivelMinimo{
    var property valor = 100
}

class Mascota{
    var salud
    method esBueno(){return salud > 250}
    method plagaAtaca(unaPlaga){salud -= 0.max(if(unaPlaga.puedeTransmitir()) unaPlaga.daño() else 0)}
}

class Barrio{
    const elementos = []
    method esBueno(unElemento){return unElemento.esBueno()}

    method esCopado(){return self.cantElementosBuenos() > self.cantElementosMalos()} //not self.cantElementosBuenos()

    method cantElementosBuenos() = elementos.count({e => e.esBueno()})
    method cantElementosMalos() = elementos.size() - self.cantElementosBuenos()
}