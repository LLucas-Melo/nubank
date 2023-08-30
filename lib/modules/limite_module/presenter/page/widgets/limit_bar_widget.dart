import 'package:asp/asp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../atom/limite_atom.dart';

class LimitBarWidget extends StatefulWidget {
  const LimitBarWidget({Key? key}) : super(key: key);

  @override
  State<LimitBarWidget> createState() => _LimitBarWidgetState();
}

class _LimitBarWidgetState extends State<LimitBarWidget> {
  final limiteAton = Modular.get<LimitAtons>();

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 500),
      child: Column(
        children: [
          Container(
            color: Colors.amber,
            width: 500,
            height: 500,
            child: RxBuilder(
              builder: (_) => SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 50,
                  inactiveTrackColor: Colors.deepPurple,
                  activeTrackColor: Colors.green,
                  showValueIndicator: ShowValueIndicator.never,
                  thumbColor: Colors.transparent,
                ),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    RotatedBox(
                      quarterTurns: 3,
                      child: Slider(
                        value: limiteAton.limitValue.value,
                        max: 1000,
                        divisions: 25,
                        onChanged: (double value) {
                          limiteAton.limitValue.setValue(value);
                        },
                      ),
                    ),
                    Positioned(
                      bottom: (limiteAton.limitValue.value / 1000) * 400,
                      child: Text(
                        limiteAton.limitValue.value.toStringAsFixed(2),
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
