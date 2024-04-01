import 'package:flutter/material.dart';
import 'package:flutter_app_rcc/data/retos_data.dart';
import '../data/options_data.dart';
import 'components/components.dart';

class RetosScreen extends StatelessWidget {
  static const String routeName = 'retos_screen';
  const RetosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: CustomAppBar(title: listOptionsData[3].title),
      bottomNavigationBar: const CustomNavigatorBar(),
      body: ListView(
        children: [
          const Image(
              image: AssetImage('assets/images/retos.png'), fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  'Retos Estratégicos',
                  style: textStyle.titleMedium,
                ),
                ListTile(
                  title: SelectableText(listRetosData[0].title),
                  subtitle: SelectableText(listRetosData[0].description),
                ),
                ListTile(
                  title: SelectableText(listRetosData[1].title),
                  subtitle: SelectableText(listRetosData[1].description),
                ),
                ListTile(
                  title: SelectableText(listRetosData[2].title),
                  subtitle: SelectableText(listRetosData[2].description),
                ),
                ListTile(
                  title: SelectableText(listRetosData[3].title),
                  subtitle: SelectableText(listRetosData[3].description),
                ),
                ListTile(
                  title: SelectableText(listRetosData[4].title),
                  subtitle: SelectableText(listRetosData[4].description),
                ),
                ListTile(
                  title: SelectableText(listRetosData[5].title),
                  subtitle: SelectableText(listRetosData[5].description),
                ),
                ListTile(
                  title: SelectableText(listRetosData[6].title),
                  subtitle: SelectableText(listRetosData[6].description),
                ),
                SelectableText(
                  'Ejes Estratégicos',
                  style: textStyle.titleMedium,
                ),
                const ListTile(
                  title: SelectableText('Comunidad'),
                ),
                const ListTile(
                  title: SelectableText('Discipulado'),
                ),
                const ListTile(
                  title: SelectableText('Misión'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
