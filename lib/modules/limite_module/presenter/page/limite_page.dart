import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:nubank/modules/limite_module/presenter/atom/limite_atom.dart';

class LimiteScreen extends StatefulWidget {
  const LimiteScreen({super.key});

  @override
  State<LimiteScreen> createState() => _LimiteScreenState();
}

class _LimiteScreenState extends State<LimiteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(children: [
        Column(
          children: [
            RxBuilder(
              builder: (_) => Text(
                limiteValue.value.toStringAsFixed(2),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  limiteValue.value++;
                },
                child: Text('Atualizado'))
          ],
        )
      ]),
    );
  }

  Widget _buidLimit() {
    return Container();
  }
}
