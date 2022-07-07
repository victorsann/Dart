import 'dart:async';

final controller = StreamController();
  
generateEvents() async {
  for(var i = 0; i <= 5; i++) {
    controller.add(i);
    await Future.delayed(Duration(seconds: 1));
  }
}

void main () async {
  
  generateEvents();
  
  controller.stream.listen((event) { 
    print(event);
  });

}