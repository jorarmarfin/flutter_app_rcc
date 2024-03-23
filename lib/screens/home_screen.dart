import 'package:flutter/material.dart';
import 'package:flutter_app_rcc/data/options_data.dart';
import 'package:flutter_app_rcc/themes/app_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'components/components.dart';

class HomeScreen extends ConsumerWidget {
  static const String routeName = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      body:Column(
        children: [
          const SizedBox(height: 50),
          Sigla(textStyle: textStyle.titleLarge!),
          const SizedBox(height: 20),
          LogoName(textStyle: textStyle.titleLarge!),
          Logo50(textStyle: textStyle.titleLarge!),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: listOptionsData.map((option) => Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                padding: const EdgeInsets.only(bottom: 10,top: 10),
                decoration:const BoxDecoration(
                  border: Border(bottom: BorderSide(color: appBrownColor, width: 1)),
                ),
                child: ListTile(
                  leading: Image.asset(option.icon, width: 50, height: 50),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  title: Text(option.title, style: textStyle.titleLarge),
                  onTap: () {
                        context.pushNamed(option.routeName);
                  },
                ),
              )).toList(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomNavigatorBar()
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
        Image.asset(logo50, width: 150, height: 150),
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
        Image.asset(logoRcc, width: 100, height: 100),
        const SizedBox(width: 15), // Espacio entre la imagen y el texto
      ],
    );
  }
}

class Sigla extends StatelessWidget {
  const Sigla({
    super.key, required this.textStyle,
  });
  final TextStyle textStyle;
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
            child: Text('RCC',style: textStyle,)),
        const SizedBox(width: 20),
      ],
    );
  }
}
