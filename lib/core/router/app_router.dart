import 'package:go_router/go_router.dart';
import '../../features/top/presentation/pages/top_page.dart';
import '../../features/second/presentation/pages/second_page.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: 'top',
      builder: (context, state) => const TopPage(),
    ),
    GoRoute(
      path: '/second',
      name: 'second',
      builder: (context, state) => const SecondPage(),
    ),
  ],
);
