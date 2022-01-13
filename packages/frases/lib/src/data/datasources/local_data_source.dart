import 'dart:developer' as logger;
import 'dart:math';

import 'package:errors/errors.dart';
import 'package:frases/src/core/utils.dart';

abstract class ILocalDataSource {
  ///Get Frase Cumple
  String getFraseType(String typeFrase);

  ///Get Frase Amor

  Future<String> getFraseAmor();
}

///Local DataSource Implementation
class InternalDataSource implements ILocalDataSource {
  @override
  Future<String> getFraseAmor() {
    throw UnimplementedError();
  }

  @override
  String getFraseType(String typeFrase) {
    try {
      logger.log(typeFrase);
      final random = Random();
      switch (typeFrase) {
        case 'Amor':
          return frasesAmor[random.nextInt(frasesAmor.length)];
        case 'Cumpleaños':
          return frasesCumple[random.nextInt(frasesCumple.length)];
        default:
          return frasesCumple[random.nextInt(frasesCumple.length)];
      }
    } catch (e) {
      throw ServerException();
    }
  }
}
