import 'package:asp/asp.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank/modules/limite_module/presenter/atom/limite_atom.dart';

class LimitReducer extends Reducer {
  final limiteAton = Modular.get<LimitAtons>();

  LimitReducer() {
    on(() => [limiteAton.refreshValue], _refreshValue);
  }

  void _refreshValue() {}
}
