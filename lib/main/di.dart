import 'package:get_it/get_it.dart';
import 'package:pokedex/features/auth/login/view_model/login_view_model.dart';
import 'package:pokedex/features/root/view_model/root_view_model.dart';

class AppDI {
  static final _getIt = GetIt.instance;
  static GetIt get instance => _getIt;

  static void config() {
   _configViewModels();
  }



  static void _configViewModels(){
     _getIt.registerFactory<RootViewModel>(
      () => RootViewModel(),
    );

    _getIt.registerFactory<LoginViewModel>(
      () => LoginViewModel(),
    );
  }
}
