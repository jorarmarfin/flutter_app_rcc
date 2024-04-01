import 'package:flutter/material.dart';

import 'components/components.dart';
class FormacionScreen extends StatelessWidget{
  static const String routeName = 'formacion_screen';
  const FormacionScreen({super.key});

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      appBar: CustomAppBar(title: 'Formacion'),
      bottomNavigationBar: CustomNavigatorBar(),
      body: Center(
        child: Text('Formacion'),
      ),
    );
  }
}