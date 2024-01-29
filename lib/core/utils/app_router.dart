import 'package:bookly/Features/Splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

import '../../Features/home/persentation/views/home.dart';

abstract class AppRouter {
  static final route = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: ((context, state) => const SplashView()),
    ),
    GoRoute(
      path: kHome,
      builder: ((context, state) => const Homepage()),
    ),
  ]);

  static String kHome='/Home';
}
