import 'package:flutter/material.dart';
import 'package:flutter_app_rcc/data/estructura_data.dart';
import 'package:flutter_app_rcc/screens/components/components.dart';
import 'package:flutter_app_rcc/themes/app_theme.dart';

class EstructuraScreen extends StatelessWidget{
  static const String routeName = 'estructura_screen';
  const EstructuraScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:const CustomAppBar(title: 'Estructura Orgánica'),
      bottomNavigationBar: const CustomNavigatorBar(),
      body: ListView(
        children: [
          const UnoContainer(title: 'Conferencia Episcopal peruana CEAL',),
          DosContainer(title: listEstructuraData[0].title, subtitle: listEstructuraData[0].description,),
          DosContainer(title: listEstructuraData[1].title, subtitle: listEstructuraData[1].description,),
          DosContainer(title: listEstructuraData[2].title, subtitle: listEstructuraData[2].description,),
          DosContainer(title: listEstructuraData[3].title, subtitle: listEstructuraData[3].description,),
          DosContainer(title: listEstructuraData[4].title, subtitle: listEstructuraData[4].description,),
          DosContainer(title: listEstructuraData[5].title, subtitle: listEstructuraData[5].description,),
          DosContainer(title: listEstructuraData[6].title, subtitle: listEstructuraData[6].description,),
          const UnoContainer(title: 'MINISTERIOS GRUPALES DE SERVICIOS',),
        ],
      ),
    );
  }
}

class DosContainer extends StatelessWidget {
  const DosContainer({
    super.key, required this.title, required this.subtitle,
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.all(10.0),
      decoration: appBoxDecoration,
      child: ListTile(
        title: Text(title.toUpperCase(), style: Theme.of(context).textTheme.titleLarge,),
        subtitle: Text(subtitle),
      ),
    );
  }
}

class UnoContainer extends StatelessWidget {
  const UnoContainer({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.all(10.0),
      decoration: appBoxDecoration,
      child: Text(title.toUpperCase(), style: Theme.of(context).textTheme.titleLarge,),
    );
  }
}