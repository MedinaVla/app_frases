import 'package:dartz/dartz.dart';
import 'package:errors/errors.dart';
import 'package:frases/src/domain/repositories/ifrases_repository.dart';

///Uses Cases Get Frases de Cumple
class GetFrasesCumple {
  ///Constructor de GetFrasesCumple
  GetFrasesCumple({required this.repository});

  ///Repository
  final IFrasesRepository repository;

  /// Callable class method
  Future<Either<Failure, String>> call() async {
    return repository.getFraseCumple();
  }
}
