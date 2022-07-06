
import 'dart:async';

final controller = StreamController();
  
generateEvents() async {
  for(var i = 0; i <= 10; i++) {
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



// void main () async {
  
  // final myStream = Stream<int>.multi((controller) async {
  //   for(var i = 0; i <= 100; i++) {
  //     controller.add(i);
  //     await Future.delayed(Duration(seconds: 2));
  //   }
  // });

  // myStream.listen((event) { 
  //   print(event);
  // });

  // final streamSubscription = Stream<int>.periodic(
  //   Duration(seconds: 1),
  //   (index) => ++index
  // ).take(10);

  // streamSubscription.listen((event) { 
  //    print(event);
  //  },
  //  onError: (err) {
  //    if(err) {
  //      print('Error!');
  //    }
  //  },
  //  onDone: () {
  //    print('Done!');
  //  },
  //  cancelOnError: false,
  // );

// }
