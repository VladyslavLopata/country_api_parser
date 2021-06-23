import 'package:country_api_parser/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCase<T, P> {
  Future<Either<Failure, T>> call(P params);
}

class NoParams {
  @override
  bool operator ==(Object other) => Object is NoParams;

  @override
  int get hashCode => 0;
}
