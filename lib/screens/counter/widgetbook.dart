import 'package:widgetbook/widgetbook.dart';

import 'counter.dart';

final counterStories = WidgetbookComponent(
  name: 'CounterScreen',
  useCases: [
    WidgetbookUseCase(
      name: 'Default',
      builder: (context) => const CounterScreen(),
    ),
  ],
);
