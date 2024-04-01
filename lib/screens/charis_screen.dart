import 'package:flutter/material.dart';

import 'components/components.dart';
class CharisScreen extends StatelessWidget{
  static const String routeName = 'charis_screen';
  const CharisScreen({super.key});

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      appBar: CustomAppBar(title: 'CHARIS'),
      bottomNavigationBar: CustomNavigatorBar(),
      body: Center(
        child: Text('CHARIS'),
      ),
    );
  }
}