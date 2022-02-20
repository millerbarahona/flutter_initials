void main() {
  
  //final flipper = Delfin();
  //flipper.nadar();
  
  //final batman = Bat();
  //batman.volar();
  //batman.caminar();
  
  //final gato = Cat();
  //gato.caminar();
  
  //final paloma = Dove();
  //paloma.caminar();
  //paloma.volar();
  
  //final pato = Duck();
  //pato.caminar();
  //pato.volar();
  //pato.nadar();
  
  //final tiburon = Shark();
  //tiburon.nadar();
  
  //final pez = Flying_Fish();
  //pez.nadar();
  //pez.volar();
  
  
}

abstract class Animal{}

abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}


abstract class Volador {
  void volar() => print('estoy volando');
}

abstract class Caminante {
  void caminar() => print('estoy caminando');
}

abstract class Nadador {
  void nadar() => print('estoy nadando');
}

class Delfin extends Mamifero with Nadador{
  
}

class Bat extends Mamifero with Volador, Caminante {
  
}

class Cat extends Mamifero with Caminante {
  
}

class Dove extends Ave with Caminante, Volador {
  
}

class Duck extends Ave with Caminante, Volador, Nadador {
  
}

class Shark extends Pez with Nadador {
  
}

class Flying_Fish extends Pez with Nadador, Volador {
  
}
