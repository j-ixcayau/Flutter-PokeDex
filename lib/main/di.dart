import 'package:data/data_sources/auth/login_data_source.dart';
import 'package:data/repositories/auth/login_repository.dart';
import 'package:domain/repositories/auth/login_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex/features/auth/login/view_model/login_view_model.dart';
import 'package:pokedex/features/root/view_model/root_view_model.dart';

class AppDI {
  static final _getIt = GetIt.instance;
  static GetIt get instance => _getIt;

  static void config() {
    _configRepositories();
    _configViewModels();
  }

  static void _configRepositories() {
    _getIt.registerLazySingleton<LoginDatasource>(
      () => LoginDatasourceImpl(),
    );

    _getIt.registerLazySingleton<LoginRepository>(
      () => LoginRepositoryImpl(
        datasource: _getIt(),
      ),
    );
  }

  static void _configViewModels() {
    _getIt.registerFactory<RootViewModel>(
      () => RootViewModel(),
    );

    _getIt.registerFactory<LoginViewModel>(
      () => LoginViewModel(
        repository: _getIt(),
      ),
    );
  }
}
