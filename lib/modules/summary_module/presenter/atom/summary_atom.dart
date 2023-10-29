import 'package:asp/asp.dart';
import 'package:flutter/material.dart';

class SummaryAtom {
  final isSelected = Atom<bool>(false);

  final color = Atom<Color>(Colors.white);

  final controller = Atom<PageController>(PageController(initialPage: 1));

  final index = Atom<int>(1);

  final refreshValue = Atom.action();

  void dispose() {
    color.dispose();
    index.dispose();
    color.dispose();
  }
}
