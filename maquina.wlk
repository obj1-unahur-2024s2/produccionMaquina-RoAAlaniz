object maquina {
  const produccion = [43, 18, 49, 62, 33, 39]

  method agregarProduccion(unElemento) {
    produccion.add(unElemento)
  }

  method agregarProducciones(unaLista) {
    produccion.addAll(unaLista )
  }
  
  //Indica si el registro incluye un día en el que se produjo la cantidad indicada de piezas.
  method algunDiaSeProdujo(cantidad) {
    return produccion.contains(cantidad)
 }

  //El valor más alto de producción diaria incluido en el registro.
  method maximoValorDeProduccion() {
    return produccion.max()
 }

  //Los valores pares incluidos, en el mismo orden en que aparecen en el registro.
  method valoresDeProduccionPares() {
    return produccion.filter({prod => prod.even()})
 }
  //Indica si en cada día, la producción se encuentra entre los valores indicados.
  method produccionEsAcotada(n1,n2) {
    return produccion.all({prod => prod.between(n1, n2)})
  }

  //Los valores de producción que superan el valor indicado, en el mismo orden en que aparecen en el registro.
  method produccionesSuperioresA(cuanto) {
    return produccion.filter({prod => prod > cuanto})
  }

  //La serie que resulta de sumar el valor indicado a cada valor de producción diaria incluido en el registro.
  method produccionesSumando(n){
    return produccion.map({prod => prod + n})
  }

  //El total de piezas producidas por la máquina, de acuerdo a la información incluida en el registro.
  method totalProducido() {
    return produccion.sum()
  }

  //El último valor registrado.
  method ultimoValorDeProduccion() {
    return produccion.last()
  }

  //La cantidad de valores de producción diaria que superan a la producción indicada para el primer día de operación.
  method cantidadProduccionesMayorALaPrimera() {
    return produccion.count({prod => prod > produccion.first()})
  }
}