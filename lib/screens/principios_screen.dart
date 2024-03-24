import 'package:flutter/material.dart';
import 'package:flutter_app_rcc/data/options_data.dart';
import 'package:flutter_app_rcc/screens/components/custom_app_bar.dart';

class PrincipiosScreen extends StatelessWidget{
  static const String routeName = 'principios_screen';
  const PrincipiosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: CustomAppBar(title: listOptionsData[2].title),
      body: ListView(
        children: [
          const Image(image: AssetImage('assets/images/historia.png'), fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText('Misión de la RCC',style: textStyle.titleLarge ,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}