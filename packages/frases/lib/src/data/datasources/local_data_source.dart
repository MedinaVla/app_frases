import 'dart:developer' as logger;
import 'dart:math';

import 'package:errors/errors.dart';
import 'package:frases/src/core/utils.dart';

abstract class ILocalDataSource {
  ///Get Frase Cumple
  String getFraseCumple();

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
  String getFraseCumple() {
    try {
      final random = Random();
      final item = frasesCumple[random.nextInt(frasesCumple.length)];
      return item;
    } catch (e) {
      throw ServerException();
    }
  }
}
