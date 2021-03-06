import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frases/frases.dart';

import 'frases_state.dart';
export 'frases_state.dart';

part 'frases_state_notifier.dart';

/// Provider to use the FrasesStateNotifier
final frasesNotifierProvider =
    StateNotifierProvider.autoDispose<FrasesNotifier, FrasesState>(
  (ref) => FrasesNotifier(useCase: ref.watch(_getFraseProvider)),
);

/// Repositories Providers
final _repositoryFrases =
    Provider<IFrasesRepository>((ref) => FrasesRepository());

/// Use Cases Providers
final _getFraseProvider =
    Provider((ref) => GetFrases(repository: ref.watch(_repositoryFrases)));
