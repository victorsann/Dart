// Sem definição de tipo

List number = [1, 2, 3];

// Com definição de tipo

List<num> numbers = [1, 2, 3];

// List de Maps

List<Map> employees = [
  {'Nome': 'Victor Santos', 'idade': 20, 'Profissao': 'Dev'},
  {'Nome': 'Felipe Maia', 'idade': 38, 'Profissao': 'Líder Técnico'},
  {'Nome': 'Luana Martins', 'idade': 21, 'Profissao': 'UI/UX Designer'}
];

// Spread Operator

List name = ['Victor'];
List names = ['Maria', 'Marcos', ...name];

// List de Objetos

class Products {
  String nome;
  double preco;

  Products(this.nome, this.preco);
}

List<Products> listaDeCompras = [
  // Products(item, preco)

  Products("Feijão", 7.80),
  Products("Arroz", 4.50),
  Products("Macarrão", 3.45),
  Products("Frango", 8.90)
];

void main() {
  print('\nTipo implícito : $number'); // Sem definição de tipo
  print('Tipo explícito : $numbers'); // Com definição de tipo
  listarFuncionarios(); // List de Maps
  listarNomes(); // Spread Operator
  listarCompras(); // List de Objetos
}

// List de Maps

listarFuncionarios() {
  print('\nList de Maps\n');
  for (var i = 0; employees.length > i; i++) {
    print(employees[i]['Nome']);
  }
}

// Spread Operator

listarNomes() {
  print('\nSpread Operator\n');
  for (var i = 0; names.length > i; i++) {
    print(names[i]);
  }
  print('Length: ${names.length}');
}

// List de Objetos

listarCompras() {
  print('\nList de Objetos\n');
  for (Products product in listaDeCompras) {
    print('${product.nome} : ${product.preco}');
  }
}
