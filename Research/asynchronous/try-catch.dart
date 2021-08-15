Future<String> fetchUserOrder() {
  return Future.delayed(const Duration(seconds: 4), () => 'Café');
}

Future<void> main() async {
  try {
  print('Aguardando pedido do usuário...');
  var order = await fetchUserOrder();
  print(order);

} catch (err) {
  print('Caught error: $err');
}
}