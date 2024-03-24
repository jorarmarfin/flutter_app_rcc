import 'package:flutter_app_rcc/infrastructure/models/home_options_models.dart';
import 'package:flutter_app_rcc/screens/charis_screen.dart';

import '../screens/screens.dart';

const String iconDove = 'assets/icons/dove.png';
final List<HomeOptionsModel> listOptionsData = [
  HomeOptionsModel(icon: iconDove, title: 'Que es la RCC', routeName: AboutScreen.routeName),
  HomeOptionsModel(icon: iconDove, title: 'Historia', routeName: HistoryScreen.routeName),
  HomeOptionsModel(icon: iconDove, title: 'Principios y valores', routeName: PrincipiosScreen.routeName),
  HomeOptionsModel(icon: iconDove, title: 'Retos y ejes estratégicos', routeName: RetosScreen.routeName),
  HomeOptionsModel(icon: iconDove, title: 'Estructura Orgánica', routeName: EstructuraScreen.routeName),
  HomeOptionsModel(icon: iconDove, title: 'Mega Proyectos', routeName: MegaScreen.routeName),
  HomeOptionsModel(icon: iconDove, title: 'Documentos RCC', routeName: DocumentosScreen.routeName),
  HomeOptionsModel(icon: iconDove, title: 'Beata Elena Guerra', routeName: BeataScreen.routeName),
  HomeOptionsModel(icon: iconDove, title: 'La Cruz de la RCC', routeName: CruzScreen.routeName),
  HomeOptionsModel(icon: iconDove, title: 'Charis', routeName: CharisScreen.routeName),
];