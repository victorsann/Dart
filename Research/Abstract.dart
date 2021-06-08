//Erro

// "Missing concrete implementation of 'Lapis.escrever'.
// Try implementing the missing method, or make the class"

// abstract class Lapis {
//   void escrever();
// }

// class Caneta extends Lapis { //Erro

// }

abstract class Lapis {
  void escrever();
}

class Caneta extends Lapis {
  @override
  void escrever() {
    print('Texto');
  }
}

void main() {
  Caneta caneta = new Caneta();
  caneta.escrever();
}
