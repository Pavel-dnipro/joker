import 'dart:convert';

import 'package:jocker/api/network_service.dart';
import 'package:jocker/business_objects/joke.dart';
import 'package:jocker/repositories/jokes_repository.dart';

class NetworkJokesRepository extends JokesRepository {
  NetworkJokesRepository(this.networkService);

  NetworkService networkService;

  @override
  Future<Joke> getJoke() async {
    String endpoint = 'https://api.chucknorris.io/jokes/random';
    final response = await networkService.get(endpoint);
    final joke = Joke.fromJson(jsonDecode(response.body));

    return joke;
  }
}
