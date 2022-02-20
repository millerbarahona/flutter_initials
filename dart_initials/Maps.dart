void main() {
  Map<String, dynamic> persona = {
    'nombre': 'Miller',
    'edad': 21,
    'soltero': false,
  };

  print(persona.containsKey('edad'));
  persona.addAll({'apellido': 'Juan'});

  print(persona['nombre']);
  print(persona);
}
