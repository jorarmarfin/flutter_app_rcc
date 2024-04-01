import 'package:flutter/material.dart';

import 'components/components.dart';
class OracionesScreen extends StatelessWidget{
  static const String routeName = 'oraciones_screen';
  const OracionesScreen({super.key});

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      appBar: CustomAppBar(title: 'Oraciones'),
      bottomNavigationBar: CustomNavigatorBar(),
      body: Center(
        child: Text('Oraciones'),
      ),
    );
  }
}