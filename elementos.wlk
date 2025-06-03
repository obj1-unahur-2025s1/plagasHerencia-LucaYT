class Hogar {
    var mugre
    const confort
    method esBueno(){return mugre / 2 <= confort}
}

class Huerta {
    var produccion
    method esBueno(){return produccion > nivelMinimo.valor()}
}

object nivelMinimo{
    var property valor = 100
}

class Mascota{
    var salud
    method esBueno(){return salud > 250}
}

class Barrio{
    const elementos = []
    method esBueno(unElemento){return unElemento.esBueno()}

    method esCopado(){return self.cantElementosBuenos() > self.cantElementosMalos()} //not self.cantElementosBuenos()

    method cantElementosBuenos() = elementos.count({e => e.esBueno()})
    method cantElementosMalos() = elementos.size() - self.cantElementosBuenos()
}