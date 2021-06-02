//int
int integer = 1;
//double
double decimal = 5.56;
//String
String string = 'an string';
//Boolean
bool boolean = true;
//Null
int? aNullableint = null;
//Dynamic
dynamic aDynamicValue = 345;

void main() {
  print('int: ${integer}');
  print('double: ${decimal}');
  print('string: ${string}');
  print('bool: ${boolean}');
  print('Null: ${aNullableint}');
  print('dynamic: ${aDynamicValue = 'new value'}');
}
