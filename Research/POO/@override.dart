class Food {
  definition() {
    print('Something edible');
  }
}

class Apple extends Food {
  @override
  definition() {
    print('A fruit');
  }
}

void main() {
  Apple apple = new Apple();
  apple.definition();
}
