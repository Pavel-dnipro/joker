// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'joke_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JokeState {
  /// Current Joke.
  Joke? get joke => throw _privateConstructorUsedError;

  /// Notifies if async operations are being performed.
  bool get isLoading => throw _privateConstructorUsedError;

  /// Error that might have occurred during the execution of a task.
  Exception? get exception => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JokeStateCopyWith<JokeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeStateCopyWith<$Res> {
  factory $JokeStateCopyWith(JokeState value, $Res Function(JokeState) then) =
      _$JokeStateCopyWithImpl<$Res, JokeState>;
  @useResult
  $Res call({Joke? joke, bool isLoading, Exception? exception});

  $JokeCopyWith<$Res>? get joke;
}

/// @nodoc
class _$JokeStateCopyWithImpl<$Res, $Val extends JokeState>
    implements $JokeStateCopyWith<$Res> {
  _$JokeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joke = freezed,
    Object? isLoading = null,
    Object? exception = freezed,
  }) {
    return _then(_value.copyWith(
      joke: freezed == joke
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as Joke?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $JokeCopyWith<$Res>? get joke {
    if (_value.joke == null) {
      return null;
    }

    return $JokeCopyWith<$Res>(_value.joke!, (value) {
      return _then(_value.copyWith(joke: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_JokeStateCopyWith<$Res> implements $JokeStateCopyWith<$Res> {
  factory _$$_JokeStateCopyWith(
          _$_JokeState value, $Res Function(_$_JokeState) then) =
      __$$_JokeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Joke? joke, bool isLoading, Exception? exception});

  @override
  $JokeCopyWith<$Res>? get joke;
}

/// @nodoc
class __$$_JokeStateCopyWithImpl<$Res>
    extends _$JokeStateCopyWithImpl<$Res, _$_JokeState>
    implements _$$_JokeStateCopyWith<$Res> {
  __$$_JokeStateCopyWithImpl(
      _$_JokeState _value, $Res Function(_$_JokeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? joke = freezed,
    Object? isLoading = null,
    Object? exception = freezed,
  }) {
    return _then(_$_JokeState(
      joke: freezed == joke
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as Joke?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      exception: freezed == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as Exception?,
    ));
  }
}

/// @nodoc

class _$_JokeState with DiagnosticableTreeMixin implements _JokeState {
  const _$_JokeState({this.joke, this.isLoading = false, this.exception});

  /// Current Joke.
  @override
  final Joke? joke;

  /// Notifies if async operations are being performed.
  @override
  @JsonKey()
  final bool isLoading;

  /// Error that might have occurred during the execution of a task.
  @override
  final Exception? exception;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JokeState(joke: $joke, isLoading: $isLoading, exception: $exception)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JokeState'))
      ..add(DiagnosticsProperty('joke', joke))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('exception', exception));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JokeState &&
            (identical(other.joke, joke) || other.joke == joke) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, joke, isLoading, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JokeStateCopyWith<_$_JokeState> get copyWith =>
      __$$_JokeStateCopyWithImpl<_$_JokeState>(this, _$identity);
}

abstract class _JokeState implements JokeState {
  const factory _JokeState(
      {final Joke? joke,
      final bool isLoading,
      final Exception? exception}) = _$_JokeState;

  @override

  /// Current Joke.
  Joke? get joke;
  @override

  /// Notifies if async operations are being performed.
  bool get isLoading;
  @override

  /// Error that might have occurred during the execution of a task.
  Exception? get exception;
  @override
  @JsonKey(ignore: true)
  _$$_JokeStateCopyWith<_$_JokeState> get copyWith =>
      throw _privateConstructorUsedError;
}
