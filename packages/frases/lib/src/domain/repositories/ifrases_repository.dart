import 'package:dartz/dartz.dart';
import 'package:errors/errors.dart';
import 'package:frases/src/domain/entities/frase.dart';

/// Repository interface for frases
abstract class IFrasesRepository {
  ///Obtiene Frase De Cumpleanos
  Future<Either<Failure, String>> getFrase(Frase typeFrase);

  ///Obtiene Frase de Amor
  Future<Either<Failure, String>> getFraseAmor();
}
