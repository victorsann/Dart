
import 'dart:async';

final controller = StreamController();

generateStream() {
  controller.add(1);
}

main () {

  generateStream();

  controller.stream.listen((event) {
    print(event);
   });

  controller.stream.listen((event) {
    print(event);
   });

}