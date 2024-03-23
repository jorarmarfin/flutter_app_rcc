import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/current_index_provider.dart';

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
