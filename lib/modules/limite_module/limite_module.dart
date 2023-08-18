import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank/modules/limite_module/presenter/page/limite_page.dart';

class LimiteModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => LimiteScreen()),
  ];
}
