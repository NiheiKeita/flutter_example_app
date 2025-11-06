import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});
  static const text = 'test';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Top Page')),
      body: Center(
        child: FilledButton(
          onPressed: () {
            // '/second' に遷移
            context.push('/second');
          },
          child: const Text('Second Pageへ'),
        ),
      ),
    );
  }
}
