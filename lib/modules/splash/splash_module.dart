import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank/modules/splash/presenter/pages/slapsh_screen.dart';

class SplashModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SplashScreen()),
  ];
}
