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
  GoRoute(
    path: '/retos',
    name: RetosScreen.routeName,
    builder: (context, state) => const RetosScreen(),
  ),
  GoRoute(
    path: '/estructura',
    name: EstructuraScreen.routeName,
    builder: (context, state) => const EstructuraScreen(),
  ),
  GoRoute(
    path: '/mega',
    name: MegaScreen.routeName,
    builder: (context, state) => const MegaScreen(),
  ),
  GoRoute(
    path: '/documentos',
    name: DocumentosScreen.routeName,
    builder: (context, state) => const DocumentosScreen(),
  ),
  GoRoute(
    path: '/beata',
    name: BeataScreen.routeName,
    builder: (context, state) => const BeataScreen(),
  ),
  GoRoute(
    path: '/cruz',
    name: CruzScreen.routeName,
    builder: (context, state) => const CruzScreen(),
  ),
  GoRoute(
    path: '/charis',
    name: CharisScreen.routeName,
    builder: (context, state) => const CharisScreen(),
  ),
  GoRoute(
    path: '/formacion',
    name: FormacionScreen.routeName,
    builder: (context, state) => const FormacionScreen(),
  ),
  GoRoute(
    path: '/alabanzas',
    name: AlabanzasScreen.routeName,
    builder: (context, state) => const AlabanzasScreen(),
  ),
  GoRoute(
    path: '/oraciones',
    name: OracionesScreen.routeName,
    builder: (context, state) => const OracionesScreen(),
  ),

]);
