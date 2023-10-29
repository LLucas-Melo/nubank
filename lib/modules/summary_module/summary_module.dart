import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank/modules/summary_module/presenter/atom/summary_atom.dart';
import 'package:nubank/modules/summary_module/presenter/page/summary_page.dart';
import 'package:nubank/modules/summary_module/presenter/reducer/summmary_reducer.dart';

class Summary extends Module {
  @override
  List<Module> get imports => [];

  final List<Bind> binds = [
    Bind.singleton<SummaryReducer>((i) => SummaryReducer(),
        onDispose: (reducer) => reducer.dispose(), export: true),
    Bind.singleton<SummaryAtom>(
      (i) => SummaryAtom(),
      onDispose: (atom) => atom.dispose(),
    )
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SummaryScreem()),
  ];
}
