import 'dart:async';

final controller = StreamController.broadcast();

generateStream() async {
  for(var i = 0; i <= 5; i++) {
    controller.add(i);
    await Future.delayed(Duration(seconds: 1));
  }
}

main() {

  generateStream();

  controller.stream.listen((event) {
    print(event);
  });

  controller.stream.listen((event) {
    print(event);
  });
}