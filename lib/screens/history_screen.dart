import 'package:flutter/material.dart';
import 'package:flutter_app_rcc/data/options_data.dart';
import 'package:flutter_app_rcc/screens/components/custom_app_bar.dart';

class HistoryScreen extends StatelessWidget{
  static const String routeName = 'history-screen';
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: CustomAppBar(title: listOptionsData[1].title),
      body: const Center(
        child: Text('History Screen'),
      ),
    );
  }
}