import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank/modules/summary_module/presenter/page/summary_page.dart';

class Summary extends Module {
  @override
  List<Module> get imports => [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SummaryScreem()),
  ];
}
