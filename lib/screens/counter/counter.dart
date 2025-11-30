import 'package:flutter/material.dart';

import 'controller.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  final controller = CounterController();
  int get count => controller.count;
  void increment() {
    controller.increment();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CounterScreen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('$count'),
            TextButton(onPressed: increment, child: const Text('カウントアップ')),
          ],
        ),
      ),
    );
  }
}
