class Cafe {
  static String tipo = 'Café Solúvel';

  static descricao() {
    print('É horrível');
  }
}

void main() {
  print(Cafe.tipo);
  Cafe.descricao();
}
