// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../data/datasource_contract/remote/products_datasource_contract.dart'
    as _i545;
import '../../data/datasource_impl/remote/products_datasource_impl.dart'
    as _i53;
import '../../presentation/layouts/mobile/products_tab/view_model/cubit/product_cubit.dart'
    as _i141;
import '../api/api_manger.dart' as _i339;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i339.ApiManger>(() => _i339.ApiManger());
    gh.factory<_i545.ProductsDatasourceContract>(
        () => _i53.ProductsDatasourceImpl(gh<_i339.ApiManger>()));
    gh.factory<_i141.ProductCubit>(
        () => _i141.ProductCubit(gh<_i545.ProductsDatasourceContract>()));
    return this;
  }
}
