import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../providers/current_index_provider.dart';
import '../screens.dart';

class CustomNavigatorBar extends ConsumerWidget {
  const CustomNavigatorBar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NavigationBar(
      selectedIndex: ref.read(currentIndexProvider.notifier).state,
      onDestinationSelected: (index) {
        ref.watch(currentIndexProvider.notifier).state = index;
        switch(index) {
          case 1:
            context.pushNamed(FormacionScreen.routeName);
            break;
          case 2:
            context.pushNamed(AlabanzasScreen.routeName);
            break;
          case 3:
            context.pushNamed(OracionesScreen.routeName);
            break;
          default:
            context.pushNamed(HomeScreen.routeName);
            break;
        }
      },
      destinations: const [
        NavigationDestination(
          icon: Icon(Icons.home,),
          label: 'Inicio',
        ),
        NavigationDestination(
          icon: Icon(Icons.menu_book),
          label: 'Formación',
        ),
        NavigationDestination(
          icon: Icon(Icons.headphones),
          label: 'Alabanza',
        ),
        // Nuevo BottomNavigationBarItem
        NavigationDestination(
          icon: Icon(Icons.control_point),
          label: 'Oraciones',
        ),
      ],
    );
  }

}
