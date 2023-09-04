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
            width: 500,
            height: 500,
            child: RxBuilder(
              builder: (_) => SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 50,
                  inactiveTrackColor: Colors.purple.withOpacity(0.15),
                  activeTrackColor: Colors.green,
                  showValueIndicator: ShowValueIndicator.never,
                  thumbColor: Colors.transparent,
                ),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: RotatedBox(
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
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: (limiteAton.limitValue.value / 1000) * 400,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              'Limite Ajustado',
                              style: TextStyle(color: Colors.white60),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                                ' R\$ ${limiteAton.limitValue.value.toStringAsFixed(2)}',
                                style: TextStyle(color: Colors.white60)),
                          ),
                        ],
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
