void main() {
  aritmeticos();
  incremento();
  decremento();
  relacionais();
  teste();
  logicos();
}

void aritmeticos() {
  var art = 1;

  print('\nOperadores Aritméticos\n');

  print(art + art);
  print(art - art);
  print(art * art);
  print(art / art);
  print(art ~/ art);
}

void incremento() {
  var teste = 1;

  print('\nIncremento\n');

  var preFixadoI = ++teste;
  print(preFixadoI);
  var posFixadoI = teste++;
  print(posFixadoI);
}

void decremento() {
  var dec = 1;

  print('\nDecremento\n');

  var preFixadoD = --dec;
  print(preFixadoD);
  var posFixadoD = dec--;
  print(posFixadoD);
}

void relacionais() {
  var rela = 1;

  print('\nOperadores Relacionais\n');

  print(rela == rela);
  print(rela != rela);
  print(rela > rela);
  print(rela < rela);
  print(rela >= rela);
  print(rela <= rela);
}

void teste() {
  var teste = 1;

  print('\nOperadores de Teste\n');

  print(teste is double);
  print(teste is! bool);
}

void logicos() {
  var log = false;
  var logTwo = true;

  print('\nOperadores Lógicos\n');

  if (!log) {
    print('Negação');
  }

  if (!log || logTwo) {
    print('Dijunção');
  }

  if (!log && logTwo) {
    print('Conjunção');
  }
}
