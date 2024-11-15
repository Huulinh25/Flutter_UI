// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'repositories/products_repository.dart' as _i1062;
import 'screens/home/bloc/product_cubit.dart' as _i163;

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
    gh.factory<_i1062.ProductRepository>(() => _i1062.ProductRepositoryImpl());
    gh.factory<_i163.ProductCubit>(
        () => _i163.ProductCubit(gh<_i1062.ProductRepository>()));
    return this;
  }
}
