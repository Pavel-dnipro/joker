import 'package:bloc/bloc.dart';
import 'package:jocker/business_objects/joke.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jocker/repositories/jokes_repository.dart';

part 'joke_cubit.freezed.dart';

class JokeCubit extends Cubit<JokeState> {
  JokeCubit(
    this.jokesRepository, {
    JokeState jokeState = const JokeState(),
  }) : super(jokeState);

  final JokesRepository jokesRepository;

  Future<void> getNewJoke() async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );

    final Joke newJoke = await jokesRepository.getJoke();

    emit(state.copyWith(
      isLoading: false,
      joke: newJoke,
    ));
  }
}

@freezed
class JokeState with _$JokeState {
  const factory JokeState({
    /// Current Joke.
    Joke? joke,

    /// Notifies if async operations are being performed.
    @Default(false) bool isLoading,

    /// Error that might have occurred during the execution of a task.
    Exception? exception,
  }) = _JokeState;
}
