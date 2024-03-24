import 'package:go_router/go_router.dart';
import '../screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: <RouteBase>[
  GoRoute(
    path: '/',
    name: HomeScreen.routeName,
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/about',
    name: AboutScreen.routeName,
    builder: (context, state) => const AboutScreen(),
  ),
  GoRoute(
    path: '/history',
    name: HistoryScreen.routeName,
    builder: (context, state) => const HistoryScreen(),
  ),
  GoRoute(
    path: '/principios',
    name: PrincipiosScreen.routeName,
    builder: (context, state) => const PrincipiosScreen(),
  ),
]);
