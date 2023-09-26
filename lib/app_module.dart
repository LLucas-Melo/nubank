import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank/modules/activity_module/presenter/activity_module.dart';
import 'package:nubank/modules/home_module/home_module.dart';

import 'modules/limite_module/limit_module.dart';
import 'modules/splash/splash_module.dart';
import 'modules/summary_module/summary_module.dart';

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
          '/limit',
          module: LimiteModule(),
        ),
        ModuleRoute(
          '/activity',
          module: Ativity(),
        ),
        ModuleRoute(
          '/summary',
          module: Summary(),
        ),
      ];
}
