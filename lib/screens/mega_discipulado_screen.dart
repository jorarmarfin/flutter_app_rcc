import 'package:flutter/material.dart';

import '../data/mega_proyectos_data.dart';
import 'components/components.dart';

class MegaDiscipuladoScreen extends StatelessWidget {
  static const String routeName = 'mega_discipulado_screen';
  const MegaDiscipuladoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Mega Proyecto Discipulado'),
      bottomNavigationBar: const CustomNavigatorBar(),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                SelectableText(mega_discipulado_1),
                Row(
                  children: [
                    Image(
                        image:
                            AssetImage('assets/images/mega_discipulado.png')),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(child: SelectableText(mega_discipulado_2)),
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
