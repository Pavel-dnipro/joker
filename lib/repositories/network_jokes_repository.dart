import 'dart:convert';

import 'package:jocker/api/network_service.dart';
import 'package:jocker/business_objects/joke.dart';
import 'package:jocker/repositories/jokes_repository.dart';
import 'package:http/http.dart';

class NetworkJokesRepository extends JokesRepository {
  NetworkJokesRepository(this.networkService);

  NetworkService networkService;

  @override
  Future<Joke> getJoke() async {
    final response =
        await get(Uri.parse('https://api.chucknorris.io/jokes/random'));
    final joke = Joke.fromJson(jsonDecode(response.body));

    return joke;
  }
}
