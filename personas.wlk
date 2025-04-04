import objetos.*
//Para importar todos los objetos de otro archivo

object rosa {
 method leGusta(unaCosa) {
   return unaCosa.peso() <= 2000
 } 
}

object estefania {
  method leGusta(unaCosa) {
    return unaCosa.color().esFuerte()
  }
}

object luisa {
  method leGusta(unaCosa) {
    return unaCosa.material().esBrillante()
  }
}

object juan {
  method leGusta(unaCosa) {
    // Se puede negar usando not o !
    // Se puede escribir el o de dos formas: or o ||
    return not unaCosa.color().esFuerte() or 
    unaCosa.peso().between(1200, 1800)
  }
}