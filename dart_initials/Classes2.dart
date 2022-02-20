void main() {
  
  final rawJson = {
    'nombre': 'Tony Stark',
    'poder': 'Dinero'
  };
  
  final ironman = Hero.fromJson(rawJson);
  print(ironman);
  
  final wolverine = Hero(nombre: 'Logan', poder: 'Regeneración');

  print(wolverine);
}

class Hero {
  String nombre;
  String poder;

  Hero({
    required this.nombre, 
    required this.poder
    });
  
  Hero.fromJson(Map<String, String> json): //los dos puntos significan que le asignan los valores en la instanciacion de la clase, no despues
    this.nombre = json['nombre']!,
    this.poder = json['poder'] ?? 'No tiene poder';
    
  

  @override
  String toString() {
    return 'nombre: $nombre, poder: $poder';
  }
}