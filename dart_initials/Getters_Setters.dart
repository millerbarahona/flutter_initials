import 'dart:math' as math;

void main() {
  
  final cuadrado = Cuadrado(3);
  cuadrado.area = 10;
  print(cuadrado.lado);
}

class Cuadrado {
  
  double lado = 0;
  
  Cuadrado(double lado){
    this.lado = lado;
  }
  
  double calculaArea() {
    return this.lado * this.lado;
  }
  
  double get area { //los getters no llevan los parentesis de los parametros
    return this.lado * this.lado;
  }
  
  set area (double valor) {
    this.lado = math.sqrt(valor);
  }
}