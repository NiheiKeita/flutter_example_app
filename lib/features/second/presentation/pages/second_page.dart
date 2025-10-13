import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Second Page')),
      body: Center(
        child: FilledButton(
          onPressed: () => context.pop(), // 戻る
          child: const Text('戻る'),
        ),
      ),
    );
  }
}
