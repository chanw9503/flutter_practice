import 'package:go_router/go_router.dart';
import 'package:imdr_app/app/login/view/intro_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/intro',
  routes: [
    GoRoute(
        path: '/intro',
        builder: (context, GoRouterState state) => const IntroPage()),
  ],
);
