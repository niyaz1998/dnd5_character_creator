// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../app/enviroment/env_config.dart' as _i5;
import '../app/network/dio_container.dart' as _i4;
import '../app/presentation/router/app_router.dart' as _i3;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.AppRouter>(_i3.AppRouter());
  gh.lazySingleton<_i4.DioContainer>(() => _i4.DioContainer());
  gh.factory<_i5.EnvConfig>(() => _i5.DevEnvConfig(), registerFor: {_dev});
  gh.factory<_i5.EnvConfig>(() => _i5.ProdEnvConfig(), registerFor: {_prod});
  return get;
}
