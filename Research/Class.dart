class Usuarios {
  // Atributos

  var usuario;
  var password;

  // Constructor

  Usuarios(String usuario, String password) {
    this.usuario = usuario;
    this.password = password;
  }

  //------------------- ou -------------------

  // Usuarios(this.usuario, this.password);

  // Método

  authentication() {
    if (this.usuario == usuario && this.password == password) {
      return true;
    } else {
      return false;
    }
  }
}

void main() {
  Usuarios auth = new Usuarios('Victor', 'rgwgwrgwrg');

  if (auth.authentication()) {
    print('Usuário Autenticado');
  } else {
    print('Usuário não Autenticado');
  }
}
