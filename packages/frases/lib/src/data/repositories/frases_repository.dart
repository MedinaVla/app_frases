import 'package:dartz/dartz.dart';
import 'package:errors/errors.dart';

import '../../domain/domain.dart';

import '../datasources/local_data_source.dart';

/// Frases repository implementation
class FrasesRepository implements IFrasesRepository {
  /// Frases repository constructor
  FrasesRepository();

  @override
  Future<Either<Failure, String>> getFraseAmor() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> getFraseCumple() async {
    try {
      InternalDataSource localDataSource = InternalDataSource();
      final result = localDataSource.getFraseCumple();
      return Right(result);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
