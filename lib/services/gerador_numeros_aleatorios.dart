import 'dart:math';

class GeradorNumerosAleatorios {
  static int geradorNumerosAleatorios(int numeroMaximo) {
    Random numeroRandom = Random();
    return numeroRandom.nextInt(numeroMaximo);
  }
}
