import 'package:flutter/material.dart';

import 'components/components.dart';
class DocumentosScreen extends StatelessWidget{
  static const String routeName = 'documentos_screen';
  const DocumentosScreen({super.key});

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      appBar: CustomAppBar(title: 'Documentos'),
      bottomNavigationBar: CustomNavigatorBar(),
      body: Center(
        child: Text('Documentos'),
      ),
    );
  }
}