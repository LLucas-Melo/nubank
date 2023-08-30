import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nubank/modules/limite_module/presenter/atom/limite_atom.dart';
import 'package:nubank/modules/limite_module/presenter/page/widgets/limit_bar_widget.dart';

class LimiteScreen extends StatefulWidget {
  const LimiteScreen({super.key});

  @override
  State<LimiteScreen> createState() => _LimiteScreenState();
}

class _LimiteScreenState extends State<LimiteScreen> {
  final limiteAton = Modular.get<LimitAtons>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Ajuste o limite',
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: _buildView(),
    );
  }

  _buildView() {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.amber,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Pedir mais limite'),
                  ),
                  Container(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size.fromHeight(56)),
                        onPressed: () {},
                        child: Text('Ajustar limite')),
                  ),
                ],
              ),
            ),
          ],
        ),
        LimitBarWidget(),
      ],
    );
  }
}
