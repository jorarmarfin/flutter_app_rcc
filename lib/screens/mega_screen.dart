import 'package:flutter/material.dart';

import '../data/mega_proyectos_data.dart';
import 'components/components.dart';

class MegaScreen extends StatelessWidget {
  static const String routeName = 'mega_screen';
  const MegaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: const CustomAppBar(title: 'Mega Proyectos'),
      bottomNavigationBar: const CustomNavigatorBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage('assets/images/mega_proyecto.png')),
                  ],
                ),
                SelectableText(
                  'MEGAPROYECTOS',
                  style: textStyle.titleMedium,
                ),
                const SelectableText(mega1),
                const SelectableText('Ante las sugerencias de El Espíritu Santo y a su escucha tenemos lo siguiente:'),
                const SelectableText('  1. Seguir creciendo como un pueblo de alabanza  adoración e intercesor.'),
                const SelectableText('  2. Ser ambiciosos en el uso de los dones carismáticos,'),
                const SelectableText('  3. Tener una formación profunda en la Palabra de Dios,'),
                const SelectableText('  4. Brindar servicios en las obras de misericordia de Dios.'),
                const SelectableText(mega2),
                const SelectableText('¿Por qué la denominación de Megaproyectos?', style: TextStyle(fontWeight: FontWeight.bold)),
                const SelectableText(mega3),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image(image: AssetImage('assets/images/mega_comunidad.png'),width: 100,),
                    Image(image: AssetImage('assets/images/mega_discipulado.png'),width: 100,),
                    Image(image: AssetImage('assets/images/mega_mision.png'),width: 100,),
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
