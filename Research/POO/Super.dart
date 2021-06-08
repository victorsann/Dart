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

//Uso do Super em conjunto com um constructor

class Pizza {
  String sabor;

  Pizza(this.sabor);
  definition() {
    print(this.sabor);
  }
}

class Margherita extends Pizza {
  String sabor;

  Margherita(this.sabor) : super(sabor);
}

void main() {
  Apple apple = new Apple();
  apple.definition();
  HotDog hotDog = new HotDog();
  hotDog.definition();

  Margherita margherita = new Margherita('Margherita');
  margherita.definition();
}
