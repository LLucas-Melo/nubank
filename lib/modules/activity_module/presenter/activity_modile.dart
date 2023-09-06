import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank/modules/activity_module/presenter/page/ativity_page.dart';

class Ativity extends Module {
  @override
  List<Module> get imports => [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ActivityScreem()),
  ];
}
