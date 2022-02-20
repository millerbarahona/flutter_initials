void main() {
 
  print('Antes de la peticion');
  
  httpGet('https:url')
    .then((data) {
      print(data.toUpperCase());
    });
  
  print('Fin del programa');
  
}



Future<String> httpGet(String url){
  return Future.delayed( Duration(seconds:3), () {
    return 'hola mundo -3 segundos';
  });
}