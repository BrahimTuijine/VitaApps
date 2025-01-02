// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/home/data/datasources/home_data_source.dart' as _i426;
import '../../features/home/data/repositories/home_repository_impl.dart'
    as _i76;
import '../../features/home/domain/repositories/home_repository.dart' as _i0;
import '../../features/home/domain/usecases/get_movies_list_usecase.dart'
    as _i153;
import '../../features/home/presentation/blocs/get_movies_list/get_movies_list_bloc.dart'
    as _i324;
import '../network/network.dart' as _i855;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i855.ConnectivityModule>(() => _i855.ConnectivityModule());
  gh.lazySingleton<_i426.HomeDataSource>(() => _i426.HomeDataSourceImpl());
  gh.lazySingleton<_i855.NetworkInfo>(() => _i855.NetworkInfoImpl(
      connectivityResult: gh<_i855.ConnectivityModule>()));
  gh.lazySingleton<_i0.HomeRepository>(() => _i76.HomeRepositoryImpl(
        dataSource: gh<_i426.HomeDataSource>(),
        networkInfo: gh<_i855.NetworkInfo>(),
      ));
  gh.lazySingleton<_i153.GetMoviesListUseCase>(
      () => _i153.GetMoviesListUseCase(gh<_i0.HomeRepository>()));
  gh.factory<_i324.GetMoviesListBloc>(() => _i324.GetMoviesListBloc(
      getMoviesListUseCase: gh<_i153.GetMoviesListUseCase>()));
  return getIt;
}
