import 'package:flutter/material.dart';
import 'package:flutter_example_app/screens/counter/presentation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('引数で表示が変わる', (tester) async {
    const testCount = 7;

    await tester.pumpWidget(
      MaterialApp(
        home: CounterPresentation(
          count: testCount,
          onIncrement: () {},
        ),
      ),
    );

    expect(find.text('$testCount'), findsOneWidget);
    expect(find.text('カウントアップ'), findsOneWidget);
  });

  testWidgets('ボタンでコールバックが呼ばれる', (tester) async {
    var called = 0;

    await tester.pumpWidget(
      MaterialApp(
        home: CounterPresentation(
          count: 0,
          onIncrement: () => called++,
        ),
      ),
    );

    await tester.tap(find.text('カウントアップ'));
    await tester.pump();

    expect(called, 1);
  });
}
