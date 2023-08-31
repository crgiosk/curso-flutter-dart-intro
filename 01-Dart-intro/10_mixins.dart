abstract class Animal { }

abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}


//Una utilidad de los mixins es cuando se quiere dar un comportamiento especifico,
//sin "abusar" de las abstracciones, para que no se vuelva un caos

abstract mixin class Volador {
  void volar() => print("Estoy voalando!!!");
}

abstract mixin class Caminante {
  void caminar() => print("Estoy caminando!!!");
}

abstract mixin class Nadador {
  void nadar() => print("Estoy nadando!!!");
}


//mixins, es como, para mi, heredar de diferentes clases?
//con la palabra reservada "with"
class Delfin extends Mamifero with Nadador { }
class Murcielago extends Mamifero with Volador, Caminante { }
class Gato extends Mamifero with Caminante { }

class Paloma extends Ave with Volador, Caminante { }
class Pato extends Ave with Volador, Caminante, Nadador { }

class Tiburon extends Pez with Nadador { }
class PezVolador extends Pez with Volador, Nadador { }

void main() {
  //delfin
  final flipper = Delfin();
  flipper.nadar();

  final batman = Murcielago();
  batman.caminar();
  batman.volar();

  final namor = Pato();
  namor.caminar();
  namor.volar();
  namor.nadar();

}