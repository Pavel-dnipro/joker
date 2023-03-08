import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jocker/cubits/joke_cubit.dart';
import 'package:jocker/ui/second_screen.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({
    super.key,
  });

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  void initState() {
    super.initState();
    context.read<JokeCubit>().getNewJoke();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
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
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () => context.read<JokeCubit>().getNewJoke(),
              child: const Text(
                'not funny(',
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const SecondPage(),
            ),
          );
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
