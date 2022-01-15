import 'dart:math';

import 'package:frases/src/core/utils.dart';
import 'package:frases/src/domain/entities/frase.dart';

///Clase de Frase de Cumple

class FraseFutbol extends Frase {
  @override
  String getFrase() {
    final random = Random();
    return frasesFutbol[random.nextInt(frasesFutbol.length)];
  }

  @override
  String toString() {
    return 'Futbol';
  }
}
