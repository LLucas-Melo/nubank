import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../atom/summary_atom.dart';

class DualButton extends StatelessWidget {
  String text;
  final bool isActive;

  DualButton({
    Key? key,
    this.isActive = false,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RxBuilder(
        builder: (context) =>
            isActive ? _buildActiveButton(text) : _buildDisabledButton(text));
  }

  Widget _buildActiveButton(String text) {
    final summaryAtom = Modular.get<SummaryAtom>();
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(summaryAtom.color.value),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: const BorderSide(color: Colors.white),
          ),
        ),
      ),
      onPressed: () {},
      child: Text(text, style: TextStyle(color: Colors.black)),
    );
  }

  Widget _buildDisabledButton(String text) {
    final summaryAtom = Modular.get<SummaryAtom>();
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: const BorderSide(color: Colors.black),
          ),
        ),
      ),
      onPressed: () {},
      child: Text(text),
    );
  }
}
