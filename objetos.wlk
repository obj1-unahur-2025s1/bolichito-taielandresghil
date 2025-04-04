//colores

object rojo {
  method esFuerte() {
   return true 
  }
}

object verde {
  method esFuerte() {
   return true 
  }
}

object celeste {
  method esFuerte() {
   return false 
  }
}

object naranja {
  method esFuerte() {
    return true
  }
}

object pardo {
  method esFuerte() {
   return false 
  }
}

//materiales

object cobre {
  method esBrillante() {
    return true
  }
}

object vidrio {
  method esBrillante() {
    return true
  }
}

object lino {
  method esBrillante() {
    return false
  }
}

object madera {
  method esBrillante() {
    return false
  }
}
object cuero {
  method esBrillante() {
    return false
  }
}

//las cosas en si

object remera {
  /* 
  se definen metodos porque estos mismos son fijos y no van a cambiar ni van a ser
  variables, si no usariamos var.
  */
  method color() {return rojo}
  method peso() {return 800}
  method material() {return lino}
}

object pelota {
  method color() {return pardo}
  method peso() {return 1300}
  method material() {return cuero}
}

object biblioteca {
  method color() {return verde}
  method peso() {return 8000}
  method material() {return madera}
}

object munieco {
  /*
  como el peso va a ser variable lo colocamos en var, luego hacemos el peso para 
  obtenerlo y luego el metodo para cambiarlo.
  */

  // Generamos la variable peso
  var peso = 0

  // Obtenemos la variable peso (CONSULTA)
  method peso() {return peso}

  // Cambiamos la variable peso (INDICACION)
  method peso(unPeso) {peso = unPeso}

  //metodos fijos de respuesta (son los atributos fijos)
  method color() {return celeste}
  method material() {return vidrio}
}

object placa {
  /*
  como el peso y el color van a ser variable lo colocamos en var, luego hacemos el 
  peso y el color para obtenerlo y luego el metodo para cambiarlo.
  */
  var peso = 0
  var color = rojo
  method peso() {return peso}
  method peso(unPeso) {peso = unPeso}
  method color() {return color}
  method color(unColor) {color = unColor}
  method material() {return cobre}
}

