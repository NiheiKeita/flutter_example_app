import 'package:flutter_example_app/screens/counter/controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterController', () {
    test('incrementでカウントアップ', () {
      final controller = CounterController();

      expect(controller.count, 0);
      controller.increment();
      expect(controller.count, 1);
    });
    test('incrementでlistenersに通知される', () {
      final controller = CounterController();
      var called = 0;

      controller.addListener(() {
        // 変更通知を受け取るリスナーを登録
        called++;
      });

      controller.increment();

      expect(called, 1); // 1回だけ通知されていることを確認
    });
  });
}
