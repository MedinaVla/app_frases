import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:errors/errors.dart';
import 'package:frases/src/core/usecase.dart';
import 'package:frases/src/domain/entities/frase.dart';
import 'package:frases/src/domain/repositories/ifrases_repository.dart';

///Uses Cases Get Frases de Cumple
class GetFrases extends UseCase<String, GetFraseParams> {
  ///Constructor de GetFrasesCumple
  GetFrases({required this.repository});

  ///Repository
  final IFrasesRepository repository;

  /// Callable class method
  @override
  Future<Either<Failure, String>> call(GetFraseParams params) async {
    return repository.getFrase(params.typeFrase);
  }
}

///Class Parms
class GetFraseParams extends Equatable {
  ///Constructor Params
  const GetFraseParams({
    required this.typeFrase,
  });

  ///Type of frase
  final Frase typeFrase;

  @override
  List<Object> get props => [typeFrase];
}
