import 'package:flutter/material.dart';

import 'components/components.dart';
class AlabanzasScreen extends StatelessWidget{
  static const String routeName = 'alabanzas_screen';
  const AlabanzasScreen({super.key});

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      appBar: CustomAppBar(title: 'Alabanzas'),
      bottomNavigationBar: CustomNavigatorBar(),
      body: Center(
        child: Text('Alabanzas'),
      ),
    );
  }
}