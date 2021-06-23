import 'package:country_api_parser/core/errors/failure.dart';
import 'package:country_api_parser/core/use_cases/use_case.dart';
import 'package:country_api_parser/features/country_list/domain/repositories/filter_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cache_filter_state.freezed.dart';

class CacheFilterState implements UseCase<NoParams, FilterParams> {
  final FilterRepository repository;
  const CacheFilterState(this.repository);

  @override
  Future<Either<Failure, NoParams>> call(FilterParams params) async {
    return repository.applyFilter(params.input);
  }
}

@freezed
class FilterParams with _$FilterParams {
  const factory FilterParams(String input) = _FilterParams;
}
