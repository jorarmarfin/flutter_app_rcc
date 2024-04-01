import 'package:flutter/material.dart';
import 'package:flutter_app_rcc/data/options_data.dart';

import '../data/principios_data.dart';
import 'components/components.dart';

class PrincipiosScreen extends StatelessWidget {
  static const String routeName = 'principios_screen';
  const PrincipiosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: CustomAppBar(title: listOptionsData[2].title),
      bottomNavigationBar: const CustomNavigatorBar(),
      body: ListView(
        children: [
          const Image(
              image: AssetImage('assets/images/historia.png'),
              fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  'Misión de la RCC',
                  style: textStyle.titleMedium,
                ),
                const SelectableText(mision),
                SelectableText(
                  'Visión de la RCC',
                  style: textStyle.titleMedium,
                ),
                const SelectableText(
                  vision,
                ),
                SelectableText(
                  'Principios de la RCC',
                  style: textStyle.titleMedium,
                ),
                SelectableText(
                  'Principio 1: Bautismo en el Espiritu que nos lleva al encuentro con Jesús.',
                  style: textStyle.titleMedium,
                ),
                const SelectableText(principio1),
                SelectableText(
                  'Principio 2: Acción del Espíritu Santo que nos lleva a una conversión continua.',
                  style: textStyle.titleMedium,
                ),
                const SelectableText(principio2),
                SelectableText(
                  'Principio 3: Oración carismática, Palabra de Dios y vida sacramental.',
                  style: textStyle.titleMedium,
                ),
                const SelectableText(principio3),
                SelectableText(
                  'Principio 4: Evangelización kerigmática, permanente y profética con ejercicio de los carismas.',
                  style: textStyle.titleMedium,
                ),
                const SelectableText(principio4),
                SelectableText(
                  'Principio 5: Formación Integral',
                  style: textStyle.titleMedium,
                ),
                const SelectableText(principio5),
                SelectableText(
                  'Principio 6: Testimonio de vida personal y comunitaria',
                  style: textStyle.titleMedium,
                ),
                const SelectableText(principio6),
                SelectableText(
                  'Principio 7: Pertenencia filial a nuestra Iglesia, Una, Santa, Católica y Apostólica. (CIC 811)',
                  style: textStyle.titleMedium,
                ),
                const SelectableText(principio7),
                SelectableText(
                  'Principio 8: Unidad entre todos los miembros de la RCC del Perú',
                  style: textStyle.titleMedium,
                ),
                const SelectableText(principio8),
                SelectableText(
                  'Principio 9: Amor a la Santísima Virgen María.',
                  style: textStyle.titleMedium,
                ),
                const SelectableText(principio9),
                SelectableText(
                  'Principio 10: Respeto a la vida y a la creación.',
                  style: textStyle.titleMedium,
                ),
                const SelectableText(principio10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
