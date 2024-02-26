import 'package:flutter_test/flutter_test.dart';
import 'package:fluttertestexample/counter.dart';

main() {

  //setup = called when running testcase 1by1
  //setupall = first 
  //teardown = called after every test case
  //teardownall = last

  group('Counter class: ', () { 

  late Counter counter;
  setUp(() => counter = Counter()); //setup

  test('Given Counter class, when instantiated, then count = 0', () {
    //arrange
    //act
    int count = counter.count;
    //assert
    expect(count, 0);
  });

  test('Given Counter class, when incrementCount is called, then count = 1',
      () {
    //arange

    //act
    counter.incrementCount();
    //assert
    expect(counter.count, 1);
  });

  test(
      'Given Counter class is instantiated, when decrementCount is called, then count = -1',
      () {
    //arrange

    //act
    counter.decrementCount();
    //assert
    expect(counter.count, -1);
  });



});
}
