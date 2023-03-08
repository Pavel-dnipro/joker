import 'package:jocker/business_objects/joke.dart';

/// Jokes feature basic data source.
abstract class JokesRepository {
  /// Get the Joke.
  Future<Joke> getJoke();
}
