import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jocker/api/network_service.dart';
import 'package:jocker/cubits/joke_cubit.dart';
import 'package:jocker/repositories/network_jokes_repository.dart';
import 'package:jocker/ui/first_screen.dart';

void main() {
  runApp(const JokerApp());
}

class JokerApp extends StatelessWidget {
  const JokerApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Need to bee moved to separate initializer or DI agregator
    return BlocProvider(
      create: (_) => JokeCubit(
        NetworkJokesRepository(
          NetworkService(),
        ),
      ),
      child: MaterialApp(
        title: 'Flutter Joker',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const FirstPage(),
      ),
    );
  }
}
