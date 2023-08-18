import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank/modules/home_module/home_module.dart';

import 'modules/limite_module/limite_module.dart';
import 'modules/splash/splash_module.dart';

class AppModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          '/',
          module: SplashModule(),
        ),
        ModuleRoute(
          '/home',
          module: HomeModule(),
        ),
        ModuleRoute(
          '/limite',
          module: LimiteModule(),
        ),
      ];
}
