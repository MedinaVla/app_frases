import 'dart:math';

import 'package:frases/src/core/utils.dart';
import 'package:frases/src/domain/entities/frase.dart';

///Clase de Frase de Amor
class FraseAmor extends Frase {
  @override
  String getFrase() {
    final random = Random();
    return frasesAmor[random.nextInt(frasesAmor.length)];
  }

  @override
  String toString() {
    return 'Amor';
  }
}
