var primeiraNota = 7;
var segundaNota = 7;
double media = (primeiraNota + segundaNota) / 2;

var aluno = 'Victor Santos';

// Função Void
void main() {
  answerThree('\nAluno: $aluno\n'); // Parâmetro

  if (!answerTwo()) {
    print('Média: $media');
    print('Aluno reprovado');
  } else {
    print('Média: $media');
    print('aluno aprovado');
  }
}

// Função Tipada

bool answer() {
  if (media > 6.99) {
    return true;
  } else {
    return false;
  }
}

// Função Anônima

answerTwo() {
  if (media > 6.99) {
    return true;
  } else {
    return false;
  }
}

// Shorthand Syntaxs

answerThree(aluno) => print(aluno);
