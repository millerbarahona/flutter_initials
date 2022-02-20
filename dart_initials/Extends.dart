void main () {
  final superman = Hero('Clark Kent',1000);
  final luthor = Villano('Lex Luthor');
  
  print(superman);
  print(luthor);
}

abstract class Personaje {
  String? poder;
  String nombre;
  
  Personaje(this.nombre);
  
  @override
  String toString() {
    return '$nombre - $poder';
  }
}

class Hero extends Personaje {
  int valentia = 100;
  
  Hero(String nombre, int valentia): 
  this.valentia = valentia,
  super( nombre ); //llama al constructor del super en la inicializacion de la clase  
}

class Villano extends Personaje {
  int maldad = 50;
  
  Villano(String nombre): super(nombre); //llama al constructor del super en la inicializacion de la clase
}