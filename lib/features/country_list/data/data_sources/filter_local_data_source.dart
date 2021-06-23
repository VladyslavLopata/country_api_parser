import 'package:country_api_parser/features/country_list/data/models/country_filter_model.dart';
import 'package:country_api_parser/features/country_list/domain/entities/country_filter.dart';

abstract class FilterLocalDataSource {
  Future<CountryFilter> getAppliedFilter();
  Future<void> applyFilter(CountryFilter filter);
}

class FilterLocalDataSourceImpl implements FilterLocalDataSource {
  CountryFilterModel appliedFilter;

  FilterLocalDataSourceImpl() : appliedFilter = const CountryFilterModel('');

  @override
  Future<void> applyFilter(CountryFilter filter) async {
    appliedFilter = CountryFilterModel(filter.input);
  }

  @override
  Future<CountryFilter> getAppliedFilter() async {
    return appliedFilter;
  }
}
