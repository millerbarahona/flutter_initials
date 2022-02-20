void main() {
  
  final perro = Perro();
  sonidoAnimal(perro);
  
  final gato = Gato();
  sonidoAnimal(gato);
  
}

void sonidoAnimal( Animal animal) {
  animal.emitirSonido();
}

abstract class Animal {
  int? patas;
    
  
  void emitirSonido();
}


class Perro implements Animal {
  
  int? patas;
  
  void emitirSonido() {
    print('Guauuu');
  }
}

class Gato implements Animal {
  int? patas;
  int? cola;
  
  void emitirSonido() {
    print('Miauuu');
  }
}