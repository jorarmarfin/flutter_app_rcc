import 'package:flutter/material.dart';
import 'package:flutter_app_rcc/data/options_data.dart';
import 'package:flutter_app_rcc/screens/components/custom_app_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../providers/video_controller_provider.dart';

class HistoryScreen extends ConsumerWidget{
  static const String routeName = 'history-screen';
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(videoControllerProvider);
    final textStyle = Theme.of(context).textTheme;
    return Scaffold(
      appBar: CustomAppBar(title: listOptionsData[1].title),
      body: ListView(
        children: [
          Padding( padding: const EdgeInsets.all(4.0),
          child: Text('Fuente: Renovacion Culiacan' ,style: textStyle.titleLarge ,)),
          YoutubePlayer(
            controller: controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.orange,
          )
        ],
      ),
    );
  }
}