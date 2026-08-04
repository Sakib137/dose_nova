import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/splash_page.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [GoRoute(path: '/', builder: (_, __) => const SplashPage())],
);
