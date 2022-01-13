part of 'frases_provider.dart';

/// Defines all the Frases logic the app will use
class FrasesNotifier extends StateNotifier<FrasesState> {
  /// Base constructor expects StateNotifier use_cases to
  /// read its usecases and also defines inital state
  FrasesNotifier({required GetFrasesCumple useCase})
      : _useCase = useCase,
        super(const FrasesState.initial());
  final GetFrasesCumple _useCase;

  void getFrase() async {
    state = const FrasesState.loading();
    final result = await _useCase();
    result.fold((error) => state = const FrasesState.error(),
        (frase) => state = FrasesState.data(frase));
  }
}
