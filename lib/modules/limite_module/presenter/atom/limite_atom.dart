import 'package:asp/asp.dart';

class LimitAtons {
  final limitValue = Atom<double>(350.00);

  final dragValue = Atom<double>(0.00);

  final refreshValue = Atom.action(); // funcao de apontamento

  void dispose() {
    limitValue.dispose();
    dragValue.dispose();
    refreshValue.dispose();
  }
}
