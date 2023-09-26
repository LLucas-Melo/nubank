import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank/modules/limite_module/presenter/atom/limite_atom.dart';
import 'package:nubank/modules/limite_module/presenter/page/limit_page.dart';
import 'package:nubank/modules/limite_module/presenter/reducer/limit_reducer.dart';

class LimiteModule extends Module {
  @override
  List<Module> get imports => [];

  final List<Bind> binds = [
    Bind.singleton<LimitReducer>((i) => LimitReducer(),
        onDispose: (reducer) => reducer.dispose(), export: true),
    Bind.singleton<LimitAtons>(
      (i) => LimitAtons(),
      onDispose: (atom) => atom.dispose(),
    )
  ];
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => LimiteScreen()),
  ];
}
