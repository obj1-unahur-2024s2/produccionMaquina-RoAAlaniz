object maquina {
  const produccion = [43,18,49,62,33,39]

  method agregarProduccion(unElemento){
    produccion.add(unElemento)
  }

  method agregarProducciones(unaLista){
    produccion.addAll(unaLista)
  }

  method algunDiaSeProdujo(cantidad) {
    return produccion.contains(cantidad)
  }

  method maximoValorDeProduccion(){
    return produccion.max()
  }

  method valoresDeProduccionPares(){
    return produccion.filter({prod => prod.even()})
  }

  method produccionEsAcotada(numero1,numero2){
    return produccion.all({prod => prod.between(numero1, numero2)})
  }

  method produccionesSuperioresA(cuanto){
    return produccion.filter({prod => prod > cuanto})
  }

  method produccionesSumando(numero){
    return produccion.map({prod => prod + numero})
  }
  method totalProducido(){
    return produccion.sum()
  }

  method ultimoValorDeProduccion(){
    return produccion.last()
  }

  method cantidadProduccionesMayorALaPrimera(){
    return produccion.count({prod => prod > produccion.first()})
  }
}