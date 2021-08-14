  Future<void> fetchUserOrder() {

      // Imagine que esta função está buscando informações de um usuário de um service ou base de dados

      return Future.delayed(const Duration(seconds: 2), 
      
      () => print('Large Latte'));
    }
    
    void main() {
      fetchUserOrder();
      print('Fetching user order...');
    }

