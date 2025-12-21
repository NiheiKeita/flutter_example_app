import 'package:flutter/material.dart';
import 'package:flutter_example_app/screens/counter/controller.dart';
import 'package:flutter_example_app/screens/counter/presentation.dart';

class CounterContainer extends StatefulWidget {
  const CounterContainer({super.key});

  @override
  State<CounterContainer> createState() => _CounterContainerState();
}

class _CounterContainerState extends State<CounterContainer> {
  late final CounterController controller;

  @override
  void initState() {
    super.initState();
    controller = CounterController(initialCount: 0);
    controller.addListener(_handleControllerChanged);
  }

  @override
  void dispose() {
    controller.removeListener(_handleControllerChanged);
    controller.dispose();
    super.dispose();
  }

  void _handleControllerChanged() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CounterPresentation(
      count: controller.count,
      onIncrement: controller.increment,
    );
  }
}
