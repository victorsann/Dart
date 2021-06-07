class Food {
  String definition() {
    return 'Something edible';
  }
}

class Apple extends Food {
  @override
  String definition() {
    return 'A fruit';
  }
}

void main() {
  Apple apple = new Apple();
  print(apple.definition());
}
