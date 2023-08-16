// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nubank/core/widgets/action_list/action_list_widget.dart';

import '../../../../core/widgets/credit_card/credit_card_widget.dart';
import '../../../../core/widgets/custom_bottom_bar/custom_bottom_bar_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<ActionItem> myItems = [
    ActionItem(
        icon: Icons.card_giftcard_outlined, description: 'Ação de Favorito'),
    ActionItem(icon: Icons.mail, description: 'Enviar E-mail'),
    ActionItem(icon: Icons.mail, description: 'Enviar E-mail'),
    ActionItem(icon: Icons.mail, description: 'Enviar E-mail'),
    ActionItem(icon: Icons.mail, description: 'Enviar E-mail'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            CreditCardWidget(backgroundColor: Colors.deepPurple),
            Expanded(
                child: ActionListWidget(
              items: myItems,
            ))
          ],
        ),
      ),
    );
  }
}
