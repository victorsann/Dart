Future<void> fetchUserOrder() {
 // Imagine que esta função está buscando informações de um usuário mas encontrou um bug
  return Future.delayed(const Duration(seconds: 2),
      () => throw Exception('Logout failed: user ID is invalid'));
}

void main() {
  fetchUserOrder();
  print('Fetching user order...');
}