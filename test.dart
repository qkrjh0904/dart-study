void main(){

  String text = 'Hello World';

  print(text);

  int i = 0;
  int j = 1;

  for (int i = 0; i < 10; i++) {
    print(i);
  }
  print(add(i, j));

  switch (i) {
    case 0:
      print('i is 0');
      break;
    case 1:
      print('i is 1');
      break;
    default:
      print('i is not 0 or 1');
  }

  // todo(3);
  // todo(1);
  // todo(2);

  todo2().listen((event) {
    print('event: $event');
  });

}

Future<void> todo(int sec) async {
  await Future.delayed(Duration(seconds: sec));
  print('todo done in $sec seconds');
}

Stream<int> todo2() async* {
  int counter = 0;

  while(counter <= 10){
    counter++;
    await Future.delayed(Duration(seconds: 1));
    print('todo is running $counter ');
    yield counter;
  }

  print('todo is done');
}

int add(int i, int j) {
  return i + j;
}