// Sem definição de tipo

var list = [1, 2, 3];

// Com definição de tipo

List numbers = [1, 2, 3];

// List de Maps

List alunos = [
  {'Nome': 'Victor Santos', 'idade': 20, 'Profissao': 'Dev'},
  {'Nome': 'Felipe Maia', 'idade': 38, 'Profissao': 'Líder Técnico'},
  {'Nome': 'Luana Martins', 'idade': 21, 'Profissao': 'UI/UX Designer'}
];

void main() {
  print('Tipo implícito $list');
  print('Tipo explícito $numbers');
  listarAlunos();
}

listarAlunos() {
  for (var i = 0; alunos.length > i; i++) {
    print(alunos[i]['Nome']);
  }
}
