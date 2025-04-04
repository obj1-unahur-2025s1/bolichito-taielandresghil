import objetos.*
import personas.*

object bolichito {
    var objetoEnVidriera = pelota
    var objetoEnMostrador = remera

    method objetoEnMostrador() {return objetoEnMostrador}
    method objetoEnVidriera() {return objetoEnVidriera}

    method objetoEnMostrador(objetoAPoner) {
        objetoEnMostrador = objetoAPoner
        }
    method objetoEnVidriera(objetoAPoner) {
        objetoEnVidriera = objetoAPoner
        }

    method esBrillante() {
        //el and se puede escribir asi o con &&
        return objetoEnMostrador.material().esBrillante() and 
        objetoEnVidriera.material().esBrillante()
    }

    method esMonocromatico() {
        return objetoEnMostrador.color() ==
        objetoEnVidriera.color()
    }

    method estaEquilibrado() {
        return objetoEnMostrador.peso() >
        objetoEnVidriera.peso()
    }

    method tieneAlgoDeColor_(unColor) {
        return objetoEnMostrador.color() == unColor ||
        objetoEnVidriera.color() == unColor
    }

    method puedeMejorar() {
        /*
        comparar dos metodos de consulta, self actua como el 
        bolichito osea que se consulta a si mismo
        */
        return not self.estaEquilibrado() ||
        self.esMonocromatico()
    }

    method puedeOfrecerleAlgoA_(unaPersona) {
        return unaPersona.leGusta(objetoEnMostrador) ||
        unaPersona.leGusta(objetoEnVidriera)
    }

    method intercambiarObjetos() {
        /*
        const aux sirve para guardar dentro un contenido que no va
        a cambiar y para no tener que designar 2 variables distintas
        y darle mas comprension al codigo
        */
        const aux = objetoEnMostrador
        objetoEnMostrador = objetoEnVidriera
        objetoEnVidriera = aux
    }
}

object arito {
  method color() {return celeste}
  method peso() {return 180}
  method material() {return cobre}
}

object banquito {
  var color = naranja
  method color() {return color}
  method color(unColor) {color = unColor}
  method peso() {return 1700}
  method material() {return madera}
}

object cajitaRoja {
    var objetoInterno = banquito
    method objeto() {return objetoInterno}
    method objeto(unObjeto) {objetoInterno = unObjeto}
    method material() {return cobre}
    method peso() {return 400 + objetoInterno.peso()} 
}