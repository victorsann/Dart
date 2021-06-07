class Food {
  definition() {
    print('Something edible');
  }
}

class Apple extends Food {
  @override
  definition() {
    super.definition();
    print('A fruit');
  }
}

class HotDog extends Food {
  @override
  definition() {
    print('A fastfood');
  }
}

void main() {
  Apple apple = new Apple();
  apple.definition();
  HotDog hotDog = new HotDog();
  hotDog.definition();
}
