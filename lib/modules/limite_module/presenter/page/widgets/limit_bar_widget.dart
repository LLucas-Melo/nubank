import 'package:asp/asp.dart';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../atom/limite_atom.dart';

class LimitBarWidget extends StatefulWidget {
  const LimitBarWidget({super.key});

  @override
  State<LimitBarWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LimitBarWidget> {
  final limiteAton = Modular.get<LimitAtons>();
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 500),
      color: Colors.green,
      child: Column(
        children: [
          Expanded(
            child: RxBuilder(
              builder: (_) => AnimatedBuilder(
                animation: limiteAton.dragValue,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(0, limiteAton.dragValue.value * 100),
                    child: child,
                  );
                },
                child: GestureDetector(
                  onVerticalDragUpdate: (details) {
                    double delta = details.primaryDelta! / 100;
                    limiteAton.dragValue.value += delta;

                    if (delta < 0 && limiteAton.limitValue.value <= 1000) {
                      limiteAton.limitValue.value += 50;
                    } else if (limiteAton.limitValue.value > 0) {
                      limiteAton.limitValue.value -= 50;
                    } else {
                      limiteAton.limitValue.setValue(0);
                    }

                    limiteAton.dragValue.value =
                        limiteAton.dragValue.value.clamp(-2.0, 0.0);
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 25),
                    width: 100,
                    color: Colors.orange,
                    child: Center(child: Text('teste')),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
