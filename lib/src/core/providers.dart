// final List<Frases> items;

import 'package:app_frases/src/frases/logic/entities/frases.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final frasesProvider = Provider<List<Frases>>(
    (ref) => const [Frases('Cumpleaños'), Frases('Amor'), Frases('Futbol')]);

final frasesSelectedProvider =
    StateProvider((ref) => ref.watch(frasesProvider).first.typeOfFrase);
