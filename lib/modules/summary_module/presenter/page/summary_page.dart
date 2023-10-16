import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nubank/modules/summary_module/presenter/page/widgets/month_card_widget.dart';

import '../../../../core/widgets/custom_bottom_bar/custom_bottom_bar_widget.dart';

class SummaryScreem extends StatefulWidget {
  const SummaryScreem({super.key});

  @override
  State<SummaryScreem> createState() => _SummaryScreemState();
}

class _SummaryScreemState extends State<SummaryScreem> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurple,
        bottomNavigationBar: CustomBottomBarWidget(),
        body: Center(
          child: Column(
            children: [
              ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(
                      0.5), // Ajuste o valor de opacidade conforme necessário
                  BlendMode.srcATop,
                ),
                child: Image.asset(
                  'assets/splash.png',
                  height: 30,
                ),
              ),
              SizedBox(
                child: Card(
                  color: Colors.deepPurple,
                  elevation: 10,
                  child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: _BuildInvoice(),
                  ),
                ),
              ),
              Teste(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _BuildInvoice() {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(children: [
      Row(
        children: [
          Icon(
            Icons.payment,
            color: Colors.white,
          ),
          Text(
            'Fatura',
            style: TextStyle(color: Colors.white),
          ),
          const Spacer(),
          Text(
            'R\$',
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
          Text(
            "1234,00",
            style: TextStyle(color: Colors.white),
          )
        ],
      )
    ]),
  );
}
