import 'package:flutter/material.dart';

import '../data/mega_proyectos_data.dart';
import 'components/components.dart';

class MegaMisionScreen extends StatelessWidget {
  static const String routeName = 'mega_mision_screen';
  const MegaMisionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Mega Proyecto Misión'),
      bottomNavigationBar: const CustomNavigatorBar(),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                SelectableText(mega_mision_1),
                Row(
                  children: [
                    Image(image: AssetImage('assets/images/mega_mision.png')),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(child: SelectableText(mega_mision_2)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
