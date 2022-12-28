import 'package:data/data_sources/auth/auth_data_source.dart';

import 'package:data/data_sources/auth/social_auth_data_source.dart';
import 'package:data/data_sources/pokemon/get_pokemons_data_source.dart';
import 'package:data/data_sources/region/get_regions_data_source.dart';
import 'package:data/repositories/auth/auth_repository.dart';

import 'package:data/repositories/auth/social_auth_repository.dart';
import 'package:data/repositories/pokemon/get_pokemons_repository.dart';
import 'package:data/repositories/region/get_regions_repository.dart';
import 'package:data/utils/http_client.dart';
import 'package:domain/repositories/auth/auth_repository.dart';

import 'package:domain/repositories/auth/social_auth_repository.dart';
import 'package:domain/repositories/pokemon/get_pokemons_repository.dart';
import 'package:domain/repositories/region/get_regions_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/features/auth/login/view_model/login_view_model.dart';
import 'package:pokedex/features/home/view_model/home_view_model.dart';
import 'package:pokedex/features/root/view_model/root_view_model.dart';

import 'package:pokedex/features/auth/register/view_model/register_view_model.dart';

import 'package:pokedex/features/region/regions/view_model/regions_view_model.dart';

import 'package:pokedex/features/pokemon/pokemons/view_model/pokemons_view_model.dart';

class AppDI {
  static final _getIt = GetIt.instance;
  static GetIt get instance => _getIt;

  static void config() {
    _configUtils();
    _configRepositories();
    _configViewModels();
  }

  static void _configUtils() {
    _getIt.registerLazySingleton<HttpClient>(
      () => HttpClientImpl(),
    );
  }

  static void _configRepositories() {
    _getIt.registerLazySingleton<AuthDataSource>(
      () => AuthDataSourceImpl(),
    );

    _getIt.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(
        dataSource: _getIt(),
      ),
    );

    _getIt.registerLazySingleton<SocialAuthDataSoure>(
      () => SocialAuthDataSoureImpl(),
    );

    _getIt.registerLazySingleton<SocialAuthRepository>(
      () => SocialAuthRepositoryImpl(
        dataSource: _getIt(),
      ),
    );

    _getIt.registerLazySingleton<GetRegionsDataSource>(
      () => GetRegionsDataSourceImpl(
        httpClient: _getIt(),
      ),
    );

    _getIt.registerLazySingleton<GetRegionsRepository>(
      () => GetRegionsRepositoryImpl(
        dataSource: _getIt(),
      ),
    );

    _getIt.registerLazySingleton<GetPokemonsDataSource>(
      () => GetPokemonsDataSourceImpl(
        httpClient: _getIt(),
      ),
    );

    _getIt.registerLazySingleton<GetPokemonsRepository>(
      () => GetPokemonsRepositoryImpl(
        dataSource: _getIt(),
      ),
    );
  }

  static void _configViewModels() {
    _getIt.registerFactory<RootViewModel>(
      () => RootViewModel(
        repository: _getIt(),
      ),
    );

    _getIt.registerFactory<LoginViewModel>(
      () => LoginViewModel(
        repository: _getIt(),
        socialRepository: _getIt(),
      ),
    );

    _getIt.registerFactory<RegisterViewModel>(
      () => RegisterViewModel(
        repository: _getIt(),
        socialRepository: _getIt(),
      ),
    );

    _getIt.registerFactory<HomeViewModel>(
      () => HomeViewModel(
        authRepository: _getIt(),
        socialRepository: _getIt(),
      ),
    );

    _getIt.registerFactory<RegionsViewModel>(
      () => RegionsViewModel(
        repository: _getIt(),
      ),
    );

    _getIt.registerFactory<PokemonsViewModel>(
      () => PokemonsViewModel(
        repository: _getIt(),
      ),
    );
  }
}
