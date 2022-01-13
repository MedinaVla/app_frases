import 'package:dartz/dartz.dart';
import 'package:errors/errors.dart';

/// Repository interface for frases
abstract class IFrasesRepository {
  ///Obtiene Frase De Cumpleanos
  Future<Either<Failure, String>> getFraseCumple();

  ///Obtiene Frase de Amor
  Future<Either<Failure, String>> getFraseAmor();
}
