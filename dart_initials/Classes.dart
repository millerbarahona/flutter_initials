void main() {
  final wolverine =  Hero(nombre:'Logan', poder:'Regeneración');
  
  print(wolverine);
}

class Hero {
  
  String nombre;
  String poder;
  
  Hero({
    required this.nombre, 
    required this.poder});
  
  /*
   * Hero (String nombre, String poder) {
   this.nombre = nombre;
   this.poder = poder;
   }
   */
  
  @override 
  String toString() {
    return 'nombre: $nombre, poder: $poder';
  }
  
}