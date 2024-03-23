import 'package:flutter_app_rcc/infrastructure/models/home_options_models.dart';

import '../screens/screens.dart';

const String iconDove = 'assets/icons/dove.png';
final List<HomeOptionsModel> listOptionsData = [
  HomeOptionsModel(icon: iconDove, title: 'Que es la RCC', routeName: AboutScreen.routeName),
  HomeOptionsModel(icon: iconDove, title: 'Historia', routeName: HistoryScreen.routeName),
  HomeOptionsModel(icon: iconDove, title: 'Principios y valores', routeName: 'objetivos_screen'),
  HomeOptionsModel(icon: iconDove, title: 'Retos y ejes estratégicos', routeName: 'objetivos_screen'),
  HomeOptionsModel(icon: iconDove, title: 'Estructura Orgánica', routeName: 'objetivos_screen'),
  HomeOptionsModel(icon: iconDove, title: 'Mega Proyectos', routeName: 'objetivos_screen'),
  HomeOptionsModel(icon: iconDove, title: 'Documentos RCC', routeName: 'objetivos_screen'),
  HomeOptionsModel(icon: iconDove, title: 'Beata Elena Guerra', routeName: 'objetivos_screen'),
  HomeOptionsModel(icon: iconDove, title: 'La Cruz de la RCC', routeName: 'objetivos_screen'),
  HomeOptionsModel(icon: iconDove, title: 'Charis', routeName: 'objetivos_screen'),
];