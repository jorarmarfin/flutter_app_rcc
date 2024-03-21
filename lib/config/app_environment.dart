import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String apiKeyTheMovieDB =
      dotenv.env['API_KEY_TMDB'] ?? 'no hay api key';
}