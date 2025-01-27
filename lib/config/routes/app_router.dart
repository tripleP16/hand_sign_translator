import 'package:go_router/go_router.dart';

import '../../presentation/screens/screens.dart';

final appRouter = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
  GoRoute(
      path: '/listener', builder: (context, state) => const ListenerScreen()),
  GoRoute(
    path: '/config',
    builder: (context, state) => const ConfigScreen(),
  ),
]);
