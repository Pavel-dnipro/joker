import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jocker/cubits/joke_cubit.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: BlocBuilder<JokeCubit, JokeState>(
              buildWhen: (JokeState previous, JokeState current) {
            return previous.joke != current.joke;
          }, builder: (context, state) {
            if (state.isLoading) {
              return const CircularProgressIndicator();
            } else {
              return Text(state.joke!.value);
            }
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //As required - get another joke when go back
          context.read<JokeCubit>().getNewJoke();
          Navigator.of(context).pop();
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
