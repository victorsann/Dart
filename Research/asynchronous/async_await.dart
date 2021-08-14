  Future<String> createOrderMessage() async {
      var order = await fetchUserOrder();
      return 'Seu pedido é: $order';
    }
    
    Future<String> fetchUserOrder() =>

        // Imagine uma função mais complexa e lenta

        Future.delayed(
          const Duration(seconds: 2),
          () => 'Café',
        );
    
    Future<void> main() async {
      print('Buscando o pedido do usuário...');
      print(await createOrderMessage());
    }