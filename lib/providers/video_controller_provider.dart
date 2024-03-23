import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

final videoControllerProvider = Provider<YoutubePlayerController>((ref) {
  return YoutubePlayerController(
    initialVideoId: '0SJavp6_hSE',
    flags:const YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );
});