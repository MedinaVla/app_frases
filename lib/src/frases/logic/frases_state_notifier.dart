part of 'frases_provider.dart';

/// Defines all the Frases logic the app will use
class FrasesNotifier extends StateNotifier<FrasesState> {
  /// Base constructor expects StateNotifier use_cases to
  /// read its usecases and also defines inital state
  FrasesNotifier({required GetFrases useCase})
      : _useCase = useCase,
        super(const FrasesState.initial());
  final GetFrases _useCase;

  void getFrase(String typeFrase) async {
    state = const FrasesState.loading();
    log('Esperando');
    await Future.delayed(const Duration(seconds: 1));
    log('Esperando2');

    final result = await _useCase(GetFraseParams(typeFrase: typeFrase));
    result.fold((error) => state = const FrasesState.error(),
        (frase) => state = FrasesState.data(frase));
  }
}
