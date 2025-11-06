import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ExamplePage extends StatelessWidget {
  const ExamplePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Example')),
      body: Center(
        child: FilledButton(
          onPressed: () => context.pop(), // 戻る
          child: const Text('戻る'),
        ),
      ),
    );
  }
}
