import 'package:flutter/material.dart';

import 'components/components.dart';
class BeataScreen extends StatelessWidget{
  static const String routeName = 'beata_screen';
  const BeataScreen({super.key});

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      appBar: CustomAppBar(title: 'Beata Elena Guerra'),
      bottomNavigationBar: CustomNavigatorBar(),
      body: Center(
        child: Text('Beata Elena Guerra'),
      ),
    );
  }
}