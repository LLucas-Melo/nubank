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
      appBar: AppBar(),
      body: _buildView(),
      // body: Stack(
      //   children: [
      //     Center(
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         children: [
      //           RxBuilder(
      //             builder: (_) => Text(
      //               limiteValue.value.toStringAsFixed(2),
      //             ),
      //           ),
      //           RxBuilder(
      //             builder: (_) => AnimatedBuilder(
      //               animation: dragValue,
      //               builder: (context, child) {
      //                 return Transform.translate(
      //                   offset: Offset(0, dragValue.value * 100),
      //                   child: child,
      //                 );
      //               },
      //               child: GestureDetector(
      //                 onVerticalDragUpdate: (details) {
      //                   double delta = details.primaryDelta! / 100;
      //                   dragValue.value += delta;

      //                   if (delta < 0 && limiteValue.value <= 1000) {
      //                     limiteValue.value += 50;
      //                   } else if (limiteValue.value > 0) {
      //                     limiteValue.value -= 50;
      //                   } else {
      //                     limiteValue.setValue(0);
      //                   }

      //                   dragValue.value = dragValue.value.clamp(-2.0, 0.0);
      //                 },
      //                 child: Container(
      //                   width: 100,
      //                   height: 100,
      //                   color: Colors.blue,
      //                   child: Center(child: Text('teste')),
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     )
      //   ],
      // ),
    );
  }

  _buildView() {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.red,
              ),
            ),
            Expanded(
                child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              color: Colors.blue,
            )),
            Expanded(
              child: Container(
                color: Colors.yellow,
              ),
            ),
          ],
        ),
        LimitBarWidget()
      ],
    );
  }
}
