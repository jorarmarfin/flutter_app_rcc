import 'package:flutter/material.dart';

import 'components/components.dart';
class MegaScreen extends StatelessWidget{
  static const String routeName = 'mega_screen';
  const MegaScreen({super.key});

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      appBar: CustomAppBar(title: 'Mega Proyectos'),
      bottomNavigationBar: CustomNavigatorBar(),
      body: Center(
        child: Text('Mega Screen'),
      ),
    );
  }
}