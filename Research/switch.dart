var status = 002; // valor mutável

void main() {
  // valor de avaliação
  switch (status) {
    // 1º Caso
    case 0:
      // Resposta ao caso
      print('Iniciar Sessão');
      // Finaliza switch se o caso for encontrado
      break;
    case 001:
      print('Pendente');
      break;
    case 002:
      print('Finalizado');
      break;
  }
  ;
}
