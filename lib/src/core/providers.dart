// final List<Frases> items;

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frases/frases.dart';

final frasesProvider =
    Provider<List<Frase>>((ref) => [FraseCumple(), FraseAmor(), FraseFutbol()]);

final frasesSelectedProvider =
    StateProvider((ref) => ref.watch(frasesProvider).first);
