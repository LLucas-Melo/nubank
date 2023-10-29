import 'package:asp/asp.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank/modules/summary_module/presenter/atom/summary_atom.dart';

class SummaryReducer extends Reducer {
  final summaryAtom = Modular.get<SummaryAtom>();

  SummaryReducer() {
    on(() => [summaryAtom.refreshValue], _refreshValue);
  }

  void _refreshValue() {}
}
