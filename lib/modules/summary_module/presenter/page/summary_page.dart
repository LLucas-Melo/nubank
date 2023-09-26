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
              SizedBox(height: 150),
            ],
          ),
        ),
      ),
    );
  }
}
