void main() {
  final String name = 'Miller';
  //saludar(name);
  //saludar('Perro');
  //saludar('Miller', 'Como estás?');
  
  saludar2(name: 'Miller');
}

void saludar(String name, [String mesagge = 'No mesagge']) { //argumento opcional en llaves cuadradas
  print('Hola mundo $name, $mesagge');
}

void saludar2 ({
  required String name, 
  String? mesagge
  }) { //argumento por nombre
  print('Hola $name, $mesagge');
}