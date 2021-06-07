class Parent {
  String surname = 'Corleone';
  String title = 'Don';
}

class Child extends Parent {
  String name = 'Michael';
}

void main() {
  Child child = new Child();
  print('Sobrenome: ${child.surname}');
  print('Título: ${child.title}');
  print('Nome: ${child.name}');
}
