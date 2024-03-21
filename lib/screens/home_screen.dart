import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/current_index_provider.dart';

class HomeScreen extends ConsumerWidget {
  static const String routeName = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const textStyle = TextStyle(fontSize: 15);
    final currentIndex = ref.watch(currentIndexProvider);
    return Scaffold(
      body:const Column(
        children: [
          SizedBox(height: 50),
          Sigla(),
          SizedBox(height: 20),
          LogoName(textStyle: textStyle),
          Logo50(textStyle: textStyle),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: ref.read(currentIndexProvider.notifier).state,
        onTap: (index) {
          //ref.read(currentIndexProvider).state = index;
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      )
    );
  }
}

class Logo50 extends StatelessWidget {
  const Logo50({
    super.key,
    required this.textStyle,
  });

  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20), // Espacio entre el texto y la imagen
        Image.asset('assets/images/50_years.png', width: 150, height: 150),
        const SizedBox(width: 15), // Espacio entre la imagen y el texto
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('Corriente de Gracia', style: textStyle),
            Text('Para el mundo', style: textStyle),
          ],
        ),
      ],
    );
  }
}

class LogoName extends StatelessWidget {
  const LogoName({
    super.key,
    required this.textStyle,
  });

  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('Renovación', style: textStyle),
            Text('Carismática', style: textStyle),
            Text('Católica', style: textStyle),
          ],
        ),
        const SizedBox(width: 10), // Espacio entre el texto y la imagen
        Image.asset('assets/images/logo.png', width: 100, height: 100),
        const SizedBox(width: 15), // Espacio entre la imagen y el texto
      ],
    );
  }
}

class Sigla extends StatelessWidget {
  const Sigla({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          alignment: Alignment.centerRight,
          width: 150,
            decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.black, width: 2)),
            ),
            child: const Text('RCC')),
        const SizedBox(width: 20),
      ],
    );
  }
}
