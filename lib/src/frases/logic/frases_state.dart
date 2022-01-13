import 'package:freezed_annotation/freezed_annotation.dart';

part 'frases_state.freezed.dart';

@freezed
abstract class FrasesState with _$FrasesState {
  /// Initial/default state
  const factory FrasesState.initial() = Initial;

  /// Data is loading state
  const factory FrasesState.loading() = _Loading;

  /// Data is present state
  const factory FrasesState.data(String frase) = _Data;

  /// Error when loading data state
  const factory FrasesState.error([String? message]) = _Error;
}
