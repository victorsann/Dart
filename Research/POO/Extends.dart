class Parent {
  String name = 'Vito';
  String surname = 'Corleone';
}

class Child extends Parent {
  String name = 'Michael';
}

void main() {
  Child child = new Child();
  print('Nome: ${child.name}');
  print('Sobrenome: ${child.surname}');
}
