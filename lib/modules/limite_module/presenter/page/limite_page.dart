import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:nubank/modules/limite_module/presenter/atom/limite_atom.dart';

class LimiteScreen extends StatefulWidget {
  const LimiteScreen({super.key});

  @override
  State<LimiteScreen> createState() => _LimiteScreenState();
}

class _LimiteScreenState extends State<LimiteScreen> {
  final ValueNotifier<double> _dragValue = ValueNotifier(0.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Column(
            children: [
              RxBuilder(
                builder: (_) => Text(
                  limiteValue.value.toStringAsFixed(2),
                ),
              ),
              AnimatedBuilder(
                animation: _dragValue,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(0, _dragValue.value * 100),
                    child: child,
                  );
                },
                child: GestureDetector(
                  onVerticalDragUpdate: (details) {
                    double delta = details.primaryDelta! / 100;
                    _dragValue.value += delta;

                    if (delta > 0) {
                      limiteValue.value +=
                          delta; // Incrementa quando arrasta para cima
                    } else {
                      limiteValue.value -=
                          delta.abs(); // Decrementa quando arrasta para baixo
                    }

                    _dragValue.value = _dragValue.value.clamp(-1.0, 1.0);
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                    child: Center(child: Text('ajustar')),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
