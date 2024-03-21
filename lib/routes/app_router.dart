import 'package:go_router/go_router.dart';
import '../screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: <RouteBase>[
  GoRoute(
    path: '/',
    name: HomeScreen.routeName,
    builder: (context, state) => const HomeScreen(),
  )

]);
