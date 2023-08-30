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
        child: Column(
          children: [
            RotatedBox(
              quarterTurns: 3,
              child: SizedBox(
                width: 500,
                height: 200,
                child: RxBuilder(
                  builder: (_) => SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      trackHeight: 50,
                      inactiveTrackColor: Colors.deepPurple,
                      activeTrackColor: Colors.green,
                      showValueIndicator: ShowValueIndicator.never,
                      thumbColor: Colors.transparent,
                    ),
                    child: Slider(
                      value: limiteAton.limitValue.value,
                      max: 1000,
                      divisions: 10,
                      label: limiteAton.limitValue.value.toString(),
                      onChanged: (double value) {
                        limiteAton.limitValue.setValue(value);
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
