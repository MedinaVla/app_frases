import 'dart:math';

import 'package:frases/src/core/utils.dart';
import 'package:frases/src/domain/entities/frase.dart';

///Clase de Frase de Cumple

class FraseCumple extends Frase {
  @override
  String getFrase() {
    final random = Random();
    return frasesCumple[random.nextInt(frasesCumple.length)];
  }

  @override
  String toString() {
    return 'Cumpleaños';
  }
}
