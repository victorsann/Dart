class Banco {
  double saldo = 100;
  double _saque = 0;

  // Getter

  double get saque {
    return _saque;
  }

  // Setter

  set saque(double saque) {
    if (saque <= 500 || saque < saldo) {
      this.saldo = saldo - saque;
      print('\n Valor sacado: $saque\n');
      print(' -------------------\n');
      print(' Saldo atual:  $saldo');
    } else {
      print('O valor máximo de saque é 500');
    }
  }
}

void main() {
  Banco conta = Banco();

  conta.saque = 10;
}
