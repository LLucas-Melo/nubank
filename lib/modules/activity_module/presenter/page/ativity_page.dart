import 'package:flutter/material.dart';
import 'package:nubank/core/widgets/custom_bottom_bar/custom_bottom_bar_widget.dart';

class ActivityScreem extends StatefulWidget {
  const ActivityScreem({super.key});

  @override
  State<ActivityScreem> createState() => _ActivityScreemState();
}

class _ActivityScreemState extends State<ActivityScreem> {
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
            ],
          ),
        ),
      ),
    );
  }
}
