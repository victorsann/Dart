void main () async {
  
  final streamSubscription = Stream<int>.periodic(
    Duration(seconds: 1),
    (index) => ++index
  ).take(10);

  streamSubscription.listen((event) { 
     print(event);
   },
   onError: (err) {
     if(err) {
       print('Error!');
     }
   },
   onDone: () {
     print('Done!');
   },
   cancelOnError: false,
  );

}
