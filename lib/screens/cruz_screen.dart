import 'package:flutter/material.dart';

import 'components/components.dart';
class CruzScreen extends StatelessWidget{
  static const String routeName = 'cruz_screen';
  const CruzScreen({super.key});

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      appBar: CustomAppBar(title: 'Cruz'),
      bottomNavigationBar: CustomNavigatorBar(),
      body: Center(
        child: Text('Cruz'),
      ),
    );
  }
}
