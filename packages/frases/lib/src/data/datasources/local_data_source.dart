import 'package:errors/errors.dart';
import 'package:frases/src/domain/entities/frase.dart';

abstract class ILocalDataSource {
  ///Get Frase Cumple
  String getFraseType(Frase typeFrase);

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
  String getFraseType(Frase typeFrase) {
    try {
      final result = typeFrase.getFrase();
      return result;
    } catch (e) {
      throw ServerException();
    }
  }
}
