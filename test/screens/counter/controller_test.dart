import 'package:flutter_example_app/screens/counter/controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('increment()でcountが増える', () {
    final controller = CounterController();
    expect(controller.count, 0); // 何も設定していないとき初期値は0
    controller.increment();

    expect(controller.count, 1);
  });

  test('increment()でnotifyListenersが呼ばれる', () {
    final controller = CounterController(initialCount: 2);
    expect(controller.count, 2); // 初期値は2
    var notified = 0;

    controller.addListener(() => notified++);
    controller.increment();

    expect(notified, 1);
  });
}
