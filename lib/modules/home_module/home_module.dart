import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank/modules/home_module/presenter/page/home_page.dart';

class HomeModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => HomeScreen()),
  ];
}
